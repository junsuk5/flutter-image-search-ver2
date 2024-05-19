import 'package:image_search_app_ver2/data/data_source/remote/dto/photo_result_dto.dart';
import 'package:image_search_app_ver2/data/data_source/remote/photo_data_source.dart';
import 'package:image_search_app_ver2/data/data_source/remote/pixabay_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PhotoDataSourceImpl implements PhotoDataSource {
  final PixabayService _pixabayService;

  PhotoDataSourceImpl(this._pixabayService);

  @override
  Future<PhotoResultDto> getPhotoResult(String query) async {
    return _pixabayService.getPhotoResult(query);
  }
}
