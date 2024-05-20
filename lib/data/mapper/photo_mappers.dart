import 'package:image_search_app_ver2/data/data_source/local/entity/photo_entity.dart';

import '../../domain/model/photo.dart';

extension EntityToPhoto on PhotoEntity {
  Photo toPhoto() {
    return Photo(
      id: id!.toInt(),
      tags: tags,
      imageData: imageData,
    );
  }
}
