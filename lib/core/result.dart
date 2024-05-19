import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<D, E> with _$Result<D, E> {
  const factory Result.success(D data) = Success;

  const factory Result.error(E e) = Error;
}
