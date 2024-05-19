import 'package:dio/dio.dart';
import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/data/data_source/remote/photo_data_source.dart';
import 'package:image_search_app_ver2/data/mapper/photo_mappers.dart';
import 'package:image_search_app_ver2/core/error/network_error.dart';
import 'package:image_search_app_ver2/domain/model/photo.dart';
import 'package:image_search_app_ver2/domain/repository/photo_repository.dart';
import 'package:injectable/injectable.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _photoDataSource;

  PhotoRepositoryImpl(this._photoDataSource);

  @override
  Future<Result<List<Photo>, NetworkError>> getPhotos(String query) async {
    try {
      final result = await _photoDataSource.getPhotoResult(query);

      final photos = result.hits!.map((e) => e.toPhoto()).toList();
      return Result.success(photos);
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
