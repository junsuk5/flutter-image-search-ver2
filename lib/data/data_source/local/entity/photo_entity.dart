import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_entity.freezed.dart';

@freezed
class PhotoEntity with _$PhotoEntity {
  const factory PhotoEntity({
    int? id,
    required Uint8List imageData,
    required String tags,
    required String query,
  }) = _PhotoEntity;
}
