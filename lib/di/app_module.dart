import 'package:dio/dio.dart';
import 'package:image_search_app_ver2/data/data_source/remote/pixabay_service.dart';
import 'package:image_search_app_ver2/data/repository/photo_repository_impl.dart';
import 'package:image_search_app_ver2/di/di_setup.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '../domain/repository/photo_repository.dart';

@module
abstract class AppModule {
  @preResolve
  Future<Database> get db => openDatabase(
        'photo.db',
        version: 1,
        onCreate: (db, version) async {
          await db.execute(
              'CREATE TABLE Photo (id INTEGER PRIMARY KEY, tags TEXT, imageData BLOB, query TEXT)');
        },
      );

  @lazySingleton
  PixabayService get pixabayService => PixabayService(Dio());

  @lazySingleton
  PhotoRepository get photoDataSource => PhotoRepositoryImpl(getIt(), getIt());
}
