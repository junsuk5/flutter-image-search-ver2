// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_search_app_ver2/data/connectivity/network_connectivity_observer.dart'
    as _i7;
import 'package:image_search_app_ver2/data/data_source/local/entity/photo_dao.dart'
    as _i10;
import 'package:image_search_app_ver2/data/data_source/remote/photo_api.dart'
    as _i8;
import 'package:image_search_app_ver2/data/data_source/remote/photo_api_impl.dart'
    as _i9;
import 'package:image_search_app_ver2/data/data_source/remote/pixabay_service.dart'
    as _i4;
import 'package:image_search_app_ver2/di/app_module.dart' as _i13;
import 'package:image_search_app_ver2/domain/connectivity/connectivity_observer.dart'
    as _i6;
import 'package:image_search_app_ver2/domain/repository/photo_repository.dart'
    as _i5;
import 'package:image_search_app_ver2/domain/use_case/get_photos_use_cases.dart'
    as _i11;
import 'package:image_search_app_ver2/presentation/search_list_view_model.dart'
    as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sqflite/sqflite.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i3.Database>(
      () => appModule.db,
      preResolve: true,
    );
    gh.lazySingleton<_i4.PixabayService>(() => appModule.pixabayService);
    gh.lazySingleton<_i5.PhotoRepository>(() => appModule.photoDataSource);
    gh.factory<_i6.ConnectivityObserver>(
        () => _i7.NetworkConnectivityObserver());
    gh.lazySingleton<_i8.PhotoApi>(
        () => _i9.PhotoApiImpl(gh<_i4.PixabayService>()));
    gh.factory<_i10.PhotoDao>(() => _i10.PhotoDao(gh<_i3.Database>()));
    gh.lazySingleton<_i11.GetOfflineFirstPhotosUseCases>(
        () => _i11.GetOfflineFirstPhotosUseCases(gh<_i5.PhotoRepository>()));
    gh.factory<_i12.SearchListViewModel>(() => _i12.SearchListViewModel(
          gh<_i11.GetOfflineFirstPhotosUseCases>(),
          gh<_i6.ConnectivityObserver>(),
        ));
    return this;
  }
}

class _$AppModule extends _i13.AppModule {}
