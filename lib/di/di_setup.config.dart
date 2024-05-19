// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_search_app_ver2/data/data_source/remote/photo_data_source_impl.dart'
    as _i4;
import 'package:image_search_app_ver2/data/data_source/remote/pixabay_service.dart'
    as _i5;
import 'package:image_search_app_ver2/di/app_module.dart' as _i7;
import 'package:image_search_app_ver2/domain/repository/photo_repository.dart'
    as _i3;
import 'package:image_search_app_ver2/domain/use_case/get_photos_use_cases.dart'
    as _i6;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.PhotoRepository>(() => appModule.photoDataSource);
    gh.lazySingleton<_i4.PhotoDataSourceImpl>(
        () => _i4.PhotoDataSourceImpl(gh<_i5.PixabayService>()));
    gh.lazySingleton<_i6.GetPhotosUseCases>(
        () => _i6.GetPhotosUseCases(gh<_i3.PhotoRepository>()));
    return this;
  }
}

class _$AppModule extends _i7.AppModule {}
