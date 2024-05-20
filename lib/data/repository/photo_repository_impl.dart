import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:image_search_app_ver2/core/error/network_error.dart';
import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/data/data_source/local/entity/photo_entity.dart';
import 'package:image_search_app_ver2/data/data_source/remote/photo_api.dart';
import 'package:image_search_app_ver2/data/mapper/photo_mappers.dart';
import 'package:image_search_app_ver2/domain/model/photo.dart';
import 'package:image_search_app_ver2/domain/repository/photo_repository.dart';

import '../data_source/local/entity/photo_dao.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi;
  final PhotoDao _photoDao;

  PhotoRepositoryImpl(this._photoApi, this._photoDao);

  @override
  Future<Result<List<Photo>, NetworkError>> getPhotos({
    required bool fetchFromRemote,
    required String query,
  }) async {
    // 캐시에서 찾기
    final localPhotos = await _photoDao.searchPhotos(query);

    // 없으면 리모트에서 가져온다
    final isDbEmpty = localPhotos.isEmpty;
    final shouldLoadFromCache = !isDbEmpty && !fetchFromRemote;

    // 캐시
    if (shouldLoadFromCache) {
      return Result.success(localPhotos.map((e) => e.toPhoto()).toList());
    }

    // 리모트
    try {
      final remoteResultDto = await _photoApi.getPhotoResult(query);

      // 캐시 비우기
      // await _photoDao.clearPhotos();

      // 캐시 추가
      final photoEntities =
          await Future.wait(remoteResultDto.hits!.map((photoDto) async {
        final response = await http.get(Uri.parse(photoDto.previewURL!));

        return PhotoEntity(
          id: photoDto.id!.toInt(),
          imageData: response.bodyBytes,
          tags: photoDto.tags!,
          query: query,
        );
      }));
      await _photoDao.insertPhotos(photoEntities);

      return Result.success(photoEntities.map((e) => e.toPhoto()).toList());
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          return const Result.error(NetworkError.connectionTimeout);
        case DioExceptionType.connectionError:
          return const Result.error(NetworkError.connectionError);
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.badCertificate:
        case DioExceptionType.badResponse:
          return const Result.error(NetworkError.badResponse);
        case DioExceptionType.unknown:
        case DioExceptionType.cancel:
          return const Result.error(NetworkError.unknown);
      }
    } catch (e) {
      return const Result.error(NetworkError.unknown);
    }
  }
}
