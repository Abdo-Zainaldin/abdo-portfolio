// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PortfolioState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PortfolioState()';
}


}

/// @nodoc
class $PortfolioStateCopyWith<$Res>  {
$PortfolioStateCopyWith(PortfolioState _, $Res Function(PortfolioState) __);
}


/// Adds pattern-matching-related methods to [PortfolioState].
extension PortfolioStatePatterns on PortfolioState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PortfolioInitial value)?  initial,TResult Function( PortfolioLoading value)?  loading,TResult Function( PortfolioLoaded value)?  loaded,TResult Function( PortfolioFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PortfolioInitial() when initial != null:
return initial(_that);case PortfolioLoading() when loading != null:
return loading(_that);case PortfolioLoaded() when loaded != null:
return loaded(_that);case PortfolioFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PortfolioInitial value)  initial,required TResult Function( PortfolioLoading value)  loading,required TResult Function( PortfolioLoaded value)  loaded,required TResult Function( PortfolioFailure value)  failure,}){
final _that = this;
switch (_that) {
case PortfolioInitial():
return initial(_that);case PortfolioLoading():
return loading(_that);case PortfolioLoaded():
return loaded(_that);case PortfolioFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PortfolioInitial value)?  initial,TResult? Function( PortfolioLoading value)?  loading,TResult? Function( PortfolioLoaded value)?  loaded,TResult? Function( PortfolioFailure value)?  failure,}){
final _that = this;
switch (_that) {
case PortfolioInitial() when initial != null:
return initial(_that);case PortfolioLoading() when loading != null:
return loading(_that);case PortfolioLoaded() when loaded != null:
return loaded(_that);case PortfolioFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( PortfolioData portfolioData)?  loaded,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PortfolioInitial() when initial != null:
return initial();case PortfolioLoading() when loading != null:
return loading();case PortfolioLoaded() when loaded != null:
return loaded(_that.portfolioData);case PortfolioFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( PortfolioData portfolioData)  loaded,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case PortfolioInitial():
return initial();case PortfolioLoading():
return loading();case PortfolioLoaded():
return loaded(_that.portfolioData);case PortfolioFailure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( PortfolioData portfolioData)?  loaded,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case PortfolioInitial() when initial != null:
return initial();case PortfolioLoading() when loading != null:
return loading();case PortfolioLoaded() when loaded != null:
return loaded(_that.portfolioData);case PortfolioFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PortfolioInitial implements PortfolioState {
  const PortfolioInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PortfolioState.initial()';
}


}




/// @nodoc


class PortfolioLoading implements PortfolioState {
  const PortfolioLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PortfolioState.loading()';
}


}




/// @nodoc


class PortfolioLoaded implements PortfolioState {
  const PortfolioLoaded({required this.portfolioData});
  

 final  PortfolioData portfolioData;

/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioLoadedCopyWith<PortfolioLoaded> get copyWith => _$PortfolioLoadedCopyWithImpl<PortfolioLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioLoaded&&(identical(other.portfolioData, portfolioData) || other.portfolioData == portfolioData));
}


@override
int get hashCode => Object.hash(runtimeType,portfolioData);

@override
String toString() {
  return 'PortfolioState.loaded(portfolioData: $portfolioData)';
}


}

/// @nodoc
abstract mixin class $PortfolioLoadedCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory $PortfolioLoadedCopyWith(PortfolioLoaded value, $Res Function(PortfolioLoaded) _then) = _$PortfolioLoadedCopyWithImpl;
@useResult
$Res call({
 PortfolioData portfolioData
});


$PortfolioDataCopyWith<$Res> get portfolioData;

}
/// @nodoc
class _$PortfolioLoadedCopyWithImpl<$Res>
    implements $PortfolioLoadedCopyWith<$Res> {
  _$PortfolioLoadedCopyWithImpl(this._self, this._then);

  final PortfolioLoaded _self;
  final $Res Function(PortfolioLoaded) _then;

/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? portfolioData = null,}) {
  return _then(PortfolioLoaded(
portfolioData: null == portfolioData ? _self.portfolioData : portfolioData // ignore: cast_nullable_to_non_nullable
as PortfolioData,
  ));
}

/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioDataCopyWith<$Res> get portfolioData {
  
  return $PortfolioDataCopyWith<$Res>(_self.portfolioData, (value) {
    return _then(_self.copyWith(portfolioData: value));
  });
}
}

/// @nodoc


class PortfolioFailure implements PortfolioState {
  const PortfolioFailure({required this.message});
  

 final  String message;

/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioFailureCopyWith<PortfolioFailure> get copyWith => _$PortfolioFailureCopyWithImpl<PortfolioFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PortfolioState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $PortfolioFailureCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory $PortfolioFailureCopyWith(PortfolioFailure value, $Res Function(PortfolioFailure) _then) = _$PortfolioFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PortfolioFailureCopyWithImpl<$Res>
    implements $PortfolioFailureCopyWith<$Res> {
  _$PortfolioFailureCopyWithImpl(this._self, this._then);

  final PortfolioFailure _self;
  final $Res Function(PortfolioFailure) _then;

/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PortfolioFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
