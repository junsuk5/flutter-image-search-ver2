// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchListState {

 List<Photo> get photos => throw _privateConstructorUsedError; bool get isLoading => throw _privateConstructorUsedError;
@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Photo> photos,  bool isLoading)  $default,) => throw _privateConstructorUsedError;

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Photo> photos,  bool isLoading)?  $default,{required TResult orElse(),}) => throw _privateConstructorUsedError;




@JsonKey(ignore: true)
$SearchListStateCopyWith<SearchListState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SearchListStateCopyWith<$Res>  {
  factory $SearchListStateCopyWith(SearchListState value, $Res Function(SearchListState) then) = _$SearchListStateCopyWithImpl<$Res, SearchListState>;
@useResult
$Res call({
 List<Photo> photos, bool isLoading
});



}

/// @nodoc
class _$SearchListStateCopyWithImpl<$Res,$Val extends SearchListState> implements $SearchListStateCopyWith<$Res> {
  _$SearchListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? photos = null,Object? isLoading = null,}) {
  return _then(_value.copyWith(
photos: null == photos ? _value.photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photo>,isLoading: null == isLoading ? _value.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  )as $Val);
}

}


/// @nodoc
abstract class _$$SearchListStateImplCopyWith<$Res> implements $SearchListStateCopyWith<$Res> {
  factory _$$SearchListStateImplCopyWith(_$SearchListStateImpl value, $Res Function(_$SearchListStateImpl) then) = __$$SearchListStateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Photo> photos, bool isLoading
});



}

/// @nodoc
class __$$SearchListStateImplCopyWithImpl<$Res> extends _$SearchListStateCopyWithImpl<$Res, _$SearchListStateImpl> implements _$$SearchListStateImplCopyWith<$Res> {
  __$$SearchListStateImplCopyWithImpl(_$SearchListStateImpl _value, $Res Function(_$SearchListStateImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? photos = null,Object? isLoading = null,}) {
  return _then(_$SearchListStateImpl(
photos: null == photos ? _value._photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photo>,isLoading: null == isLoading ? _value.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$SearchListStateImpl  implements _SearchListState {
  const _$SearchListStateImpl({final  List<Photo> photos = const [], this.isLoading = false}): _photos = photos;

  

 final  List<Photo> _photos;
@override@JsonKey() List<Photo> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@JsonKey() final  bool isLoading;

@override
String toString() {
  return 'SearchListState(photos: $photos, isLoading: $isLoading)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SearchListStateImpl&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_photos),isLoading);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$SearchListStateImplCopyWith<_$SearchListStateImpl> get copyWith => __$$SearchListStateImplCopyWithImpl<_$SearchListStateImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Photo> photos,  bool isLoading)  $default,) {
  return $default(photos,isLoading);
}

@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Photo> photos,  bool isLoading)?  $default,{required TResult orElse(),}) {
  if ($default != null) {
    return $default(photos,isLoading);
  }
  return orElse();
}




}


abstract class _SearchListState implements SearchListState {
  const factory _SearchListState({final  List<Photo> photos, final  bool isLoading}) = _$SearchListStateImpl;
  

  

@override  List<Photo> get photos;@override  bool get isLoading;
@override @JsonKey(ignore: true)
_$$SearchListStateImplCopyWith<_$SearchListStateImpl> get copyWith => throw _privateConstructorUsedError;

}
