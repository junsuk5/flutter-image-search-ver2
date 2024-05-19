import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required int id,
    required String url,
    required String tags,
  }) = _Photo;
}
