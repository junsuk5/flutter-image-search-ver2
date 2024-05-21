// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoEntity {

 int? get id => throw _privateConstructorUsedError; Uint8List get imageData => throw _privateConstructorUsedError; String get tags => throw _privateConstructorUsedError; String get query => throw _privateConstructorUsedError;
@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  Uint8List imageData,  String tags,  String query)  $default,) => throw _privateConstructorUsedError;

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  Uint8List imageData,  String tags,  String query)?  $default,{required TResult orElse(),}) => throw _privateConstructorUsedError;




@JsonKey(ignore: true)
$PhotoEntityCopyWith<PhotoEntity> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PhotoEntityCopyWith<$Res>  {
  factory $PhotoEntityCopyWith(PhotoEntity value, $Res Function(PhotoEntity) then) = _$PhotoEntityCopyWithImpl<$Res, PhotoEntity>;
@useResult
$Res call({
 int? id, Uint8List imageData, String tags, String query
});



}

/// @nodoc
class _$PhotoEntityCopyWithImpl<$Res,$Val extends PhotoEntity> implements $PhotoEntityCopyWith<$Res> {
  _$PhotoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? imageData = null,Object? tags = null,Object? query = null,}) {
  return _then(_value.copyWith(
id: freezed == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as int?,imageData: null == imageData ? _value.imageData : imageData // ignore: cast_nullable_to_non_nullable
as Uint8List,tags: null == tags ? _value.tags : tags // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PhotoEntityImplCopyWith<$Res> implements $PhotoEntityCopyWith<$Res> {
  factory _$$PhotoEntityImplCopyWith(_$PhotoEntityImpl value, $Res Function(_$PhotoEntityImpl) then) = __$$PhotoEntityImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int? id, Uint8List imageData, String tags, String query
});



}

/// @nodoc
class __$$PhotoEntityImplCopyWithImpl<$Res> extends _$PhotoEntityCopyWithImpl<$Res, _$PhotoEntityImpl> implements _$$PhotoEntityImplCopyWith<$Res> {
  __$$PhotoEntityImplCopyWithImpl(_$PhotoEntityImpl _value, $Res Function(_$PhotoEntityImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? imageData = null,Object? tags = null,Object? query = null,}) {
  return _then(_$PhotoEntityImpl(
id: freezed == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as int?,imageData: null == imageData ? _value.imageData : imageData // ignore: cast_nullable_to_non_nullable
as Uint8List,tags: null == tags ? _value.tags : tags // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _value.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$PhotoEntityImpl  implements _PhotoEntity {
  const _$PhotoEntityImpl({this.id, required this.imageData, required this.tags, required this.query});

  

@override final  int? id;
@override final  Uint8List imageData;
@override final  String tags;
@override final  String query;

@override
String toString() {
  return 'PhotoEntity(id: $id, imageData: $imageData, tags: $tags, query: $query)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PhotoEntityImpl&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.imageData, imageData)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(imageData),tags,query);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$PhotoEntityImplCopyWith<_$PhotoEntityImpl> get copyWith => __$$PhotoEntityImplCopyWithImpl<_$PhotoEntityImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  Uint8List imageData,  String tags,  String query)  $default,) {
  return $default(id,imageData,tags,query);
}

@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  Uint8List imageData,  String tags,  String query)?  $default,{required TResult orElse(),}) {
  if ($default != null) {
    return $default(id,imageData,tags,query);
  }
  return orElse();
}




}


abstract class _PhotoEntity implements PhotoEntity {
  const factory _PhotoEntity({final  int? id, required final  Uint8List imageData, required final  String tags, required final  String query}) = _$PhotoEntityImpl;
  

  

@override  int? get id;@override  Uint8List get imageData;@override  String get tags;@override  String get query;
@override @JsonKey(ignore: true)
_$$PhotoEntityImplCopyWith<_$PhotoEntityImpl> get copyWith => throw _privateConstructorUsedError;

}
