import 'package:image_search_app_ver2/core/error/network_error.dart';
import 'package:image_search_app_ver2/domain/repository/photo_repository.dart';
import 'package:injectable/injectable.dart';

import '../../core/result.dart';
import '../model/photo.dart';

@lazySingleton
class GetPhotosUseCases {
  final PhotoRepository _photoRepository;

  GetPhotosUseCases(this._photoRepository);

  Future<Result<List<Photo>, NetworkError>> execute(String query) async {
    return await _photoRepository.getPhotos(query);
  }
}
