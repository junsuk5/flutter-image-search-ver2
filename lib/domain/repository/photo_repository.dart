import 'package:image_search_app_ver2/core/error/network_error.dart';

import '../../core/result.dart';
import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>, NetworkError>> getPhotos(String query);
}
