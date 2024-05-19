import 'package:dio/dio.dart';
import 'package:image_search_app_ver2/data/data_source/remote/photo_data_source_impl.dart';
import 'package:image_search_app_ver2/data/data_source/remote/pixabay_service.dart';
import 'package:image_search_app_ver2/data/repository/photo_repository_impl.dart';
import 'package:injectable/injectable.dart';

import '../domain/repository/photo_repository.dart';

@module
abstract class AppModule {
  @lazySingleton
  PhotoRepository get photoDataSource => PhotoRepositoryImpl(
        PhotoDataSourceImpl(PixabayService(Dio())),
      );
}
