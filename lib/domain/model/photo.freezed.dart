// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Photo {

 int get id => throw _privateConstructorUsedError; Uint8List get imageData => throw _privateConstructorUsedError; String get tags => throw _privateConstructorUsedError;
@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  Uint8List imageData,  String tags)  $default,) => throw _privateConstructorUsedError;

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  Uint8List imageData,  String tags)?  $default,{required TResult orElse(),}) => throw _privateConstructorUsedError;




@JsonKey(ignore: true)
$PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PhotoCopyWith<$Res>  {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) = _$PhotoCopyWithImpl<$Res, Photo>;
@useResult
$Res call({
 int id, Uint8List imageData, String tags
});



}

/// @nodoc
class _$PhotoCopyWithImpl<$Res,$Val extends Photo> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageData = null,Object? tags = null,}) {
  return _then(_value.copyWith(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as int,imageData: null == imageData ? _value.imageData : imageData // ignore: cast_nullable_to_non_nullable
as Uint8List,tags: null == tags ? _value.tags : tags // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(_$PhotoImpl value, $Res Function(_$PhotoImpl) then) = __$$PhotoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int id, Uint8List imageData, String tags
});



}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl> implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(_$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageData = null,Object? tags = null,}) {
  return _then(_$PhotoImpl(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as int,imageData: null == imageData ? _value.imageData : imageData // ignore: cast_nullable_to_non_nullable
as Uint8List,tags: null == tags ? _value.tags : tags // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$PhotoImpl  implements _Photo {
  const _$PhotoImpl({required this.id, required this.imageData, required this.tags});

  

@override final  int id;
@override final  Uint8List imageData;
@override final  String tags;

@override
String toString() {
  return 'Photo(id: $id, imageData: $imageData, tags: $tags)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PhotoImpl&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.imageData, imageData)&&(identical(other.tags, tags) || other.tags == tags));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(imageData),tags);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$PhotoImplCopyWith<_$PhotoImpl> get copyWith => __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  Uint8List imageData,  String tags)  $default,) {
  return $default(id,imageData,tags);
}

@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  Uint8List imageData,  String tags)?  $default,{required TResult orElse(),}) {
  if ($default != null) {
    return $default(id,imageData,tags);
  }
  return orElse();
}




}


abstract class _Photo implements Photo {
  const factory _Photo({required final  int id, required final  Uint8List imageData, required final  String tags}) = _$PhotoImpl;
  

  

@override  int get id;@override  Uint8List get imageData;@override  String get tags;
@override @JsonKey(ignore: true)
_$$PhotoImplCopyWith<_$PhotoImpl> get copyWith => throw _privateConstructorUsedError;

}
