import 'dto/photo_result_dto.dart';

abstract interface class PhotoDataSource {
  Future<PhotoResultDto> getPhotoResult(String query);
}
