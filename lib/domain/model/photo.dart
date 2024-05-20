import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required int id,
    required Uint8List imageData,
    required String tags,
  }) = _Photo;
}
