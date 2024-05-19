import 'package:dio/dio.dart';
import 'package:image_search_app_ver2/data/data_source/remote/photo_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'dto/photo_result_dto.dart';

part 'pixabay_service.g.dart';

@RestApi(
    baseUrl: 'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb')
abstract class PixabayService {
  factory PixabayService(Dio dio, {String baseUrl}) = _PixabayService;

  @GET(
      'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&image_type=photo')
  Future<PhotoResultDto> getPhotoResult(@Query('q') String query);
}
