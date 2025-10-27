// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEntity {

 int get id; String get name; String? get email; String get phone; String? get fcmToken;
/// Create a copy of AuthEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthEntityCopyWith<AuthEntity> get copyWith => _$AuthEntityCopyWithImpl<AuthEntity>(this as AuthEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,fcmToken);

@override
String toString() {
  return 'AuthEntity(id: $id, name: $name, email: $email, phone: $phone, fcmToken: $fcmToken)';
}


}

/// @nodoc
abstract mixin class $AuthEntityCopyWith<$Res>  {
  factory $AuthEntityCopyWith(AuthEntity value, $Res Function(AuthEntity) _then) = _$AuthEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? email, String phone, String? fcmToken
});




}
/// @nodoc
class _$AuthEntityCopyWithImpl<$Res>
    implements $AuthEntityCopyWith<$Res> {
  _$AuthEntityCopyWithImpl(this._self, this._then);

  final AuthEntity _self;
  final $Res Function(AuthEntity) _then;

/// Create a copy of AuthEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = freezed,Object? phone = null,Object? fcmToken = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthEntity].
extension AuthEntityPatterns on AuthEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthEntity value)  $default,){
final _that = this;
switch (_that) {
case _AuthEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AuthEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? email,  String phone,  String? fcmToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.fcmToken);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? email,  String phone,  String? fcmToken)  $default,) {final _that = this;
switch (_that) {
case _AuthEntity():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.fcmToken);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? email,  String phone,  String? fcmToken)?  $default,) {final _that = this;
switch (_that) {
case _AuthEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.fcmToken);case _:
  return null;

}
}

}

/// @nodoc


class _AuthEntity implements AuthEntity {
  const _AuthEntity({required this.id, required this.name, this.email, required this.phone, this.fcmToken});
  

@override final  int id;
@override final  String name;
@override final  String? email;
@override final  String phone;
@override final  String? fcmToken;

/// Create a copy of AuthEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthEntityCopyWith<_AuthEntity> get copyWith => __$AuthEntityCopyWithImpl<_AuthEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,fcmToken);

@override
String toString() {
  return 'AuthEntity(id: $id, name: $name, email: $email, phone: $phone, fcmToken: $fcmToken)';
}


}

/// @nodoc
abstract mixin class _$AuthEntityCopyWith<$Res> implements $AuthEntityCopyWith<$Res> {
  factory _$AuthEntityCopyWith(_AuthEntity value, $Res Function(_AuthEntity) _then) = __$AuthEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? email, String phone, String? fcmToken
});




}
/// @nodoc
class __$AuthEntityCopyWithImpl<$Res>
    implements _$AuthEntityCopyWith<$Res> {
  __$AuthEntityCopyWithImpl(this._self, this._then);

  final _AuthEntity _self;
  final $Res Function(_AuthEntity) _then;

/// Create a copy of AuthEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = freezed,Object? phone = null,Object? fcmToken = freezed,}) {
  return _then(_AuthEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,fcmToken: freezed == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
