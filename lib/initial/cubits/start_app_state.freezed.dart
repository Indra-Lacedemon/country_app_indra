// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StartAppState {

 bool? get isLogged;
/// Create a copy of StartAppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartAppStateCopyWith<StartAppState> get copyWith => _$StartAppStateCopyWithImpl<StartAppState>(this as StartAppState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartAppState&&(identical(other.isLogged, isLogged) || other.isLogged == isLogged));
}


@override
int get hashCode => Object.hash(runtimeType,isLogged);

@override
String toString() {
  return 'StartAppState(isLogged: $isLogged)';
}


}

/// @nodoc
abstract mixin class $StartAppStateCopyWith<$Res>  {
  factory $StartAppStateCopyWith(StartAppState value, $Res Function(StartAppState) _then) = _$StartAppStateCopyWithImpl;
@useResult
$Res call({
 bool? isLogged
});




}
/// @nodoc
class _$StartAppStateCopyWithImpl<$Res>
    implements $StartAppStateCopyWith<$Res> {
  _$StartAppStateCopyWithImpl(this._self, this._then);

  final StartAppState _self;
  final $Res Function(StartAppState) _then;

/// Create a copy of StartAppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLogged = freezed,}) {
  return _then(_self.copyWith(
isLogged: freezed == isLogged ? _self.isLogged : isLogged // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [StartAppState].
extension StartAppStatePatterns on StartAppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StartAppState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartAppState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StartAppState value)  $default,){
final _that = this;
switch (_that) {
case _StartAppState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StartAppState value)?  $default,){
final _that = this;
switch (_that) {
case _StartAppState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isLogged)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartAppState() when $default != null:
return $default(_that.isLogged);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isLogged)  $default,) {final _that = this;
switch (_that) {
case _StartAppState():
return $default(_that.isLogged);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isLogged)?  $default,) {final _that = this;
switch (_that) {
case _StartAppState() when $default != null:
return $default(_that.isLogged);case _:
  return null;

}
}

}

/// @nodoc


class _StartAppState implements StartAppState {
  const _StartAppState({this.isLogged = null});
  

@override@JsonKey() final  bool? isLogged;

/// Create a copy of StartAppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartAppStateCopyWith<_StartAppState> get copyWith => __$StartAppStateCopyWithImpl<_StartAppState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartAppState&&(identical(other.isLogged, isLogged) || other.isLogged == isLogged));
}


@override
int get hashCode => Object.hash(runtimeType,isLogged);

@override
String toString() {
  return 'StartAppState(isLogged: $isLogged)';
}


}

/// @nodoc
abstract mixin class _$StartAppStateCopyWith<$Res> implements $StartAppStateCopyWith<$Res> {
  factory _$StartAppStateCopyWith(_StartAppState value, $Res Function(_StartAppState) _then) = __$StartAppStateCopyWithImpl;
@override @useResult
$Res call({
 bool? isLogged
});




}
/// @nodoc
class __$StartAppStateCopyWithImpl<$Res>
    implements _$StartAppStateCopyWith<$Res> {
  __$StartAppStateCopyWithImpl(this._self, this._then);

  final _StartAppState _self;
  final $Res Function(_StartAppState) _then;

/// Create a copy of StartAppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLogged = freezed,}) {
  return _then(_StartAppState(
isLogged: freezed == isLogged ? _self.isLogged : isLogged // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
