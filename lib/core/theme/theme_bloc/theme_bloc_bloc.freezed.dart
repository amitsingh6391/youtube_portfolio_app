// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeBlocEvent {
  bool get isDarkTheme => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkTheme) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkTheme)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkTheme)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTheme value) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTheme value)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTheme value)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeBlocEventCopyWith<ThemeBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBlocEventCopyWith<$Res> {
  factory $ThemeBlocEventCopyWith(
          ThemeBlocEvent value, $Res Function(ThemeBlocEvent) then) =
      _$ThemeBlocEventCopyWithImpl<$Res, ThemeBlocEvent>;
  @useResult
  $Res call({bool isDarkTheme});
}

/// @nodoc
class _$ThemeBlocEventCopyWithImpl<$Res, $Val extends ThemeBlocEvent>
    implements $ThemeBlocEventCopyWith<$Res> {
  _$ThemeBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
  }) {
    return _then(_value.copyWith(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetThemeCopyWith<$Res>
    implements $ThemeBlocEventCopyWith<$Res> {
  factory _$$_GetThemeCopyWith(
          _$_GetTheme value, $Res Function(_$_GetTheme) then) =
      __$$_GetThemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkTheme});
}

/// @nodoc
class __$$_GetThemeCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res, _$_GetTheme>
    implements _$$_GetThemeCopyWith<$Res> {
  __$$_GetThemeCopyWithImpl(
      _$_GetTheme _value, $Res Function(_$_GetTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
  }) {
    return _then(_$_GetTheme(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GetTheme implements _GetTheme {
  const _$_GetTheme({required this.isDarkTheme});

  @override
  final bool isDarkTheme;

  @override
  String toString() {
    return 'ThemeBlocEvent.changeTheme(isDarkTheme: $isDarkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTheme &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetThemeCopyWith<_$_GetTheme> get copyWith =>
      __$$_GetThemeCopyWithImpl<_$_GetTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkTheme) changeTheme,
  }) {
    return changeTheme(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkTheme)? changeTheme,
  }) {
    return changeTheme?.call(isDarkTheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkTheme)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(isDarkTheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTheme value) changeTheme,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTheme value)? changeTheme,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTheme value)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class _GetTheme implements ThemeBlocEvent {
  const factory _GetTheme({required final bool isDarkTheme}) = _$_GetTheme;

  @override
  bool get isDarkTheme;
  @override
  @JsonKey(ignore: true)
  _$$_GetThemeCopyWith<_$_GetTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeBlocState {
  bool get isDarkTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeBlocStateCopyWith<ThemeBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBlocStateCopyWith<$Res> {
  factory $ThemeBlocStateCopyWith(
          ThemeBlocState value, $Res Function(ThemeBlocState) then) =
      _$ThemeBlocStateCopyWithImpl<$Res, ThemeBlocState>;
  @useResult
  $Res call({bool isDarkTheme});
}

/// @nodoc
class _$ThemeBlocStateCopyWithImpl<$Res, $Val extends ThemeBlocState>
    implements $ThemeBlocStateCopyWith<$Res> {
  _$ThemeBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
  }) {
    return _then(_value.copyWith(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeBlocStateCopyWith<$Res>
    implements $ThemeBlocStateCopyWith<$Res> {
  factory _$$_ThemeBlocStateCopyWith(
          _$_ThemeBlocState value, $Res Function(_$_ThemeBlocState) then) =
      __$$_ThemeBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkTheme});
}

/// @nodoc
class __$$_ThemeBlocStateCopyWithImpl<$Res>
    extends _$ThemeBlocStateCopyWithImpl<$Res, _$_ThemeBlocState>
    implements _$$_ThemeBlocStateCopyWith<$Res> {
  __$$_ThemeBlocStateCopyWithImpl(
      _$_ThemeBlocState _value, $Res Function(_$_ThemeBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
  }) {
    return _then(_$_ThemeBlocState(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ThemeBlocState implements _ThemeBlocState {
  const _$_ThemeBlocState({required this.isDarkTheme});

  @override
  final bool isDarkTheme;

  @override
  String toString() {
    return 'ThemeBlocState(isDarkTheme: $isDarkTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeBlocState &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeBlocStateCopyWith<_$_ThemeBlocState> get copyWith =>
      __$$_ThemeBlocStateCopyWithImpl<_$_ThemeBlocState>(this, _$identity);
}

abstract class _ThemeBlocState implements ThemeBlocState {
  const factory _ThemeBlocState({required final bool isDarkTheme}) =
      _$_ThemeBlocState;

  @override
  bool get isDarkTheme;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeBlocStateCopyWith<_$_ThemeBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
