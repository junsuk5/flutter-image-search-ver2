import '../../domain/model/photo.dart';
import '../data_source/remote/dto/photo_result_dto.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id!.toInt(),
      url: previewURL!,
      tags: tags!,
    );
  }
}
