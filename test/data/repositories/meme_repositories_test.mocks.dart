// Mocks generated by Mockito 5.4.2 from annotations
// in meme_app/test/data/repositories/meme_repositories_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:meme_app/core/error/failure.dart' as _i5;
import 'package:meme_app/data/datasources/app_datasources.dart' as _i3;
import 'package:meme_app/data/models/memes_model.dart' as _i6;
import 'package:meme_app/data/models/project_model.dart' as _i7;
import 'package:meme_app/domain/usecases/delete_project_by_id.dart' as _i8;
import 'package:meme_app/domain/usecases/get_projects_by_filter.dart' as _i9;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AppDataSources].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppDataSources extends _i1.Mock implements _i3.AppDataSources {
  MockAppDataSources() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.MemesModel>>> getMemes() =>
      (super.noSuchMethod(
        Invocation.method(
          #getMemes,
          [],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.Failure, List<_i6.MemesModel>>>.value(
                _FakeEither_0<_i5.Failure, List<_i6.MemesModel>>(
          this,
          Invocation.method(
            #getMemes,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i6.MemesModel>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i7.ProjectModel>>> getProjects() =>
      (super.noSuchMethod(
        Invocation.method(
          #getProjects,
          [],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.Failure, List<_i7.ProjectModel>>>.value(
                _FakeEither_0<_i5.Failure, List<_i7.ProjectModel>>(
          this,
          Invocation.method(
            #getProjects,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i7.ProjectModel>>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, bool>> deleteProjectById(
          _i8.DeleteProjectByIdParam? param) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteProjectById,
          [param],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, bool>>.value(
            _FakeEither_0<_i5.Failure, bool>(
          this,
          Invocation.method(
            #deleteProjectById,
            [param],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, bool>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i7.ProjectModel>>>
      getProjectsByFilter(_i9.GetProjectsByFilterParam? param) =>
          (super.noSuchMethod(
            Invocation.method(
              #getProjectsByFilter,
              [param],
            ),
            returnValue: _i4
                .Future<_i2.Either<_i5.Failure, List<_i7.ProjectModel>>>.value(
                _FakeEither_0<_i5.Failure, List<_i7.ProjectModel>>(
              this,
              Invocation.method(
                #getProjectsByFilter,
                [param],
              ),
            )),
          ) as _i4.Future<_i2.Either<_i5.Failure, List<_i7.ProjectModel>>>);
}
