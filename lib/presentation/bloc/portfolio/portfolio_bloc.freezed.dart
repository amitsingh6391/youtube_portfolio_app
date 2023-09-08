// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProjects,
    required TResult Function(int id) deleteProjectById,
    required TResult Function(String projectCategory) getProjectsByFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProjects,
    TResult? Function(int id)? deleteProjectById,
    TResult? Function(String projectCategory)? getProjectsByFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProjects,
    TResult Function(int id)? deleteProjectById,
    TResult Function(String projectCategory)? getProjectsByFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProjects value) getProjects,
    required TResult Function(_DeleteProjectByID value) deleteProjectById,
    required TResult Function(_GetProjectsByFilter value) getProjectsByFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProjects value)? getProjects,
    TResult? Function(_DeleteProjectByID value)? deleteProjectById,
    TResult? Function(_GetProjectsByFilter value)? getProjectsByFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProjects value)? getProjects,
    TResult Function(_DeleteProjectByID value)? deleteProjectById,
    TResult Function(_GetProjectsByFilter value)? getProjectsByFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioEventCopyWith<$Res> {
  factory $PortfolioEventCopyWith(
          PortfolioEvent value, $Res Function(PortfolioEvent) then) =
      _$PortfolioEventCopyWithImpl<$Res, PortfolioEvent>;
}

/// @nodoc
class _$PortfolioEventCopyWithImpl<$Res, $Val extends PortfolioEvent>
    implements $PortfolioEventCopyWith<$Res> {
  _$PortfolioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetProjectsCopyWith<$Res> {
  factory _$$_GetProjectsCopyWith(
          _$_GetProjects value, $Res Function(_$_GetProjects) then) =
      __$$_GetProjectsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProjectsCopyWithImpl<$Res>
    extends _$PortfolioEventCopyWithImpl<$Res, _$_GetProjects>
    implements _$$_GetProjectsCopyWith<$Res> {
  __$$_GetProjectsCopyWithImpl(
      _$_GetProjects _value, $Res Function(_$_GetProjects) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProjects implements _GetProjects {
  const _$_GetProjects();

  @override
  String toString() {
    return 'PortfolioEvent.getProjects()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetProjects);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProjects,
    required TResult Function(int id) deleteProjectById,
    required TResult Function(String projectCategory) getProjectsByFilter,
  }) {
    return getProjects();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProjects,
    TResult? Function(int id)? deleteProjectById,
    TResult? Function(String projectCategory)? getProjectsByFilter,
  }) {
    return getProjects?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProjects,
    TResult Function(int id)? deleteProjectById,
    TResult Function(String projectCategory)? getProjectsByFilter,
    required TResult orElse(),
  }) {
    if (getProjects != null) {
      return getProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProjects value) getProjects,
    required TResult Function(_DeleteProjectByID value) deleteProjectById,
    required TResult Function(_GetProjectsByFilter value) getProjectsByFilter,
  }) {
    return getProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProjects value)? getProjects,
    TResult? Function(_DeleteProjectByID value)? deleteProjectById,
    TResult? Function(_GetProjectsByFilter value)? getProjectsByFilter,
  }) {
    return getProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProjects value)? getProjects,
    TResult Function(_DeleteProjectByID value)? deleteProjectById,
    TResult Function(_GetProjectsByFilter value)? getProjectsByFilter,
    required TResult orElse(),
  }) {
    if (getProjects != null) {
      return getProjects(this);
    }
    return orElse();
  }
}

abstract class _GetProjects implements PortfolioEvent {
  const factory _GetProjects() = _$_GetProjects;
}

/// @nodoc
abstract class _$$_DeleteProjectByIDCopyWith<$Res> {
  factory _$$_DeleteProjectByIDCopyWith(_$_DeleteProjectByID value,
          $Res Function(_$_DeleteProjectByID) then) =
      __$$_DeleteProjectByIDCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteProjectByIDCopyWithImpl<$Res>
    extends _$PortfolioEventCopyWithImpl<$Res, _$_DeleteProjectByID>
    implements _$$_DeleteProjectByIDCopyWith<$Res> {
  __$$_DeleteProjectByIDCopyWithImpl(
      _$_DeleteProjectByID _value, $Res Function(_$_DeleteProjectByID) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteProjectByID(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteProjectByID implements _DeleteProjectByID {
  const _$_DeleteProjectByID(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PortfolioEvent.deleteProjectById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteProjectByID &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteProjectByIDCopyWith<_$_DeleteProjectByID> get copyWith =>
      __$$_DeleteProjectByIDCopyWithImpl<_$_DeleteProjectByID>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProjects,
    required TResult Function(int id) deleteProjectById,
    required TResult Function(String projectCategory) getProjectsByFilter,
  }) {
    return deleteProjectById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProjects,
    TResult? Function(int id)? deleteProjectById,
    TResult? Function(String projectCategory)? getProjectsByFilter,
  }) {
    return deleteProjectById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProjects,
    TResult Function(int id)? deleteProjectById,
    TResult Function(String projectCategory)? getProjectsByFilter,
    required TResult orElse(),
  }) {
    if (deleteProjectById != null) {
      return deleteProjectById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProjects value) getProjects,
    required TResult Function(_DeleteProjectByID value) deleteProjectById,
    required TResult Function(_GetProjectsByFilter value) getProjectsByFilter,
  }) {
    return deleteProjectById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProjects value)? getProjects,
    TResult? Function(_DeleteProjectByID value)? deleteProjectById,
    TResult? Function(_GetProjectsByFilter value)? getProjectsByFilter,
  }) {
    return deleteProjectById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProjects value)? getProjects,
    TResult Function(_DeleteProjectByID value)? deleteProjectById,
    TResult Function(_GetProjectsByFilter value)? getProjectsByFilter,
    required TResult orElse(),
  }) {
    if (deleteProjectById != null) {
      return deleteProjectById(this);
    }
    return orElse();
  }
}

abstract class _DeleteProjectByID implements PortfolioEvent {
  const factory _DeleteProjectByID(final int id) = _$_DeleteProjectByID;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteProjectByIDCopyWith<_$_DeleteProjectByID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetProjectsByFilterCopyWith<$Res> {
  factory _$$_GetProjectsByFilterCopyWith(_$_GetProjectsByFilter value,
          $Res Function(_$_GetProjectsByFilter) then) =
      __$$_GetProjectsByFilterCopyWithImpl<$Res>;
  @useResult
  $Res call({String projectCategory});
}

/// @nodoc
class __$$_GetProjectsByFilterCopyWithImpl<$Res>
    extends _$PortfolioEventCopyWithImpl<$Res, _$_GetProjectsByFilter>
    implements _$$_GetProjectsByFilterCopyWith<$Res> {
  __$$_GetProjectsByFilterCopyWithImpl(_$_GetProjectsByFilter _value,
      $Res Function(_$_GetProjectsByFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectCategory = null,
  }) {
    return _then(_$_GetProjectsByFilter(
      null == projectCategory
          ? _value.projectCategory
          : projectCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetProjectsByFilter implements _GetProjectsByFilter {
  const _$_GetProjectsByFilter(this.projectCategory);

  @override
  final String projectCategory;

  @override
  String toString() {
    return 'PortfolioEvent.getProjectsByFilter(projectCategory: $projectCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProjectsByFilter &&
            (identical(other.projectCategory, projectCategory) ||
                other.projectCategory == projectCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProjectsByFilterCopyWith<_$_GetProjectsByFilter> get copyWith =>
      __$$_GetProjectsByFilterCopyWithImpl<_$_GetProjectsByFilter>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProjects,
    required TResult Function(int id) deleteProjectById,
    required TResult Function(String projectCategory) getProjectsByFilter,
  }) {
    return getProjectsByFilter(projectCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProjects,
    TResult? Function(int id)? deleteProjectById,
    TResult? Function(String projectCategory)? getProjectsByFilter,
  }) {
    return getProjectsByFilter?.call(projectCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProjects,
    TResult Function(int id)? deleteProjectById,
    TResult Function(String projectCategory)? getProjectsByFilter,
    required TResult orElse(),
  }) {
    if (getProjectsByFilter != null) {
      return getProjectsByFilter(projectCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProjects value) getProjects,
    required TResult Function(_DeleteProjectByID value) deleteProjectById,
    required TResult Function(_GetProjectsByFilter value) getProjectsByFilter,
  }) {
    return getProjectsByFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProjects value)? getProjects,
    TResult? Function(_DeleteProjectByID value)? deleteProjectById,
    TResult? Function(_GetProjectsByFilter value)? getProjectsByFilter,
  }) {
    return getProjectsByFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProjects value)? getProjects,
    TResult Function(_DeleteProjectByID value)? deleteProjectById,
    TResult Function(_GetProjectsByFilter value)? getProjectsByFilter,
    required TResult orElse(),
  }) {
    if (getProjectsByFilter != null) {
      return getProjectsByFilter(this);
    }
    return orElse();
  }
}

abstract class _GetProjectsByFilter implements PortfolioEvent {
  const factory _GetProjectsByFilter(final String projectCategory) =
      _$_GetProjectsByFilter;

  String get projectCategory;
  @JsonKey(ignore: true)
  _$$_GetProjectsByFilterCopyWith<_$_GetProjectsByFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PortfolioState {
  bool get loading => throw _privateConstructorUsedError;
  List<Project>? get projects => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioStateCopyWith<PortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioStateCopyWith<$Res> {
  factory $PortfolioStateCopyWith(
          PortfolioState value, $Res Function(PortfolioState) then) =
      _$PortfolioStateCopyWithImpl<$Res, PortfolioState>;
  @useResult
  $Res call({bool loading, List<Project>? projects, Failure? failure});
}

/// @nodoc
class _$PortfolioStateCopyWithImpl<$Res, $Val extends PortfolioState>
    implements $PortfolioStateCopyWith<$Res> {
  _$PortfolioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? projects = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      projects: freezed == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PortfolioStateCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory _$$_PortfolioStateCopyWith(
          _$_PortfolioState value, $Res Function(_$_PortfolioState) then) =
      __$$_PortfolioStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<Project>? projects, Failure? failure});
}

/// @nodoc
class __$$_PortfolioStateCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$_PortfolioState>
    implements _$$_PortfolioStateCopyWith<$Res> {
  __$$_PortfolioStateCopyWithImpl(
      _$_PortfolioState _value, $Res Function(_$_PortfolioState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? projects = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_PortfolioState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_PortfolioState implements _PortfolioState {
  const _$_PortfolioState(
      {required this.loading, final List<Project>? projects, this.failure})
      : _projects = projects;

  @override
  final bool loading;
  final List<Project>? _projects;
  @override
  List<Project>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'PortfolioState(loading: $loading, projects: $projects, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_projects), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PortfolioStateCopyWith<_$_PortfolioState> get copyWith =>
      __$$_PortfolioStateCopyWithImpl<_$_PortfolioState>(this, _$identity);
}

abstract class _PortfolioState implements PortfolioState {
  const factory _PortfolioState(
      {required final bool loading,
      final List<Project>? projects,
      final Failure? failure}) = _$_PortfolioState;

  @override
  bool get loading;
  @override
  List<Project>? get projects;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioStateCopyWith<_$_PortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}
