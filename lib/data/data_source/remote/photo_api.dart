import 'dto/photo_result_dto.dart';

abstract interface class PhotoApi {
  Future<PhotoResultDto> getPhotoResult(String query);
}
