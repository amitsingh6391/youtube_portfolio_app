import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';

import '../../mocks/migrated_mocks.dart';
import 'get_projects_test.mocks.dart';

void main() {
  final mockAppRepositories = MockAppRepositories();

  void setUpSuccessForDeleteProjectById(DeleteProjectByIdParam? param) async {
    when(mockAppRepositories.deleteProjectById(param)).thenAnswer(
      (realInvocation) async => const Right(true),
    );
  }

   void setUpFailureForDeleteProjectById(DeleteProjectByIdParam? param) async {
    when(mockAppRepositories.deleteProjectById(param)).thenAnswer(
      (realInvocation) async => const Left(mockFailure),
    );
  }

  test(
    'while calling deletProjectById we should abel to delete',
    () async {
      //Setup
  
      setUpSuccessForDeleteProjectById(deleteProjectByIdParam);

     //Action
      DeleteProjectById deleteProjectById =
          DeleteProjectById(appRepositories: mockAppRepositories);

      final result = await deleteProjectById(deleteProjectByIdParam);

      //expec.....
      expect(result.fold((l) => l, (r) => r), true);
    },
  );

   test(
    'while calling deletProjectById we should to get error',
    () async {
      //Setup
      const DeleteProjectByIdParam deleteProjectByIdParam =
          DeleteProjectByIdParam(id: 1);
      setUpFailureForDeleteProjectById(deleteProjectByIdParam);

      //Action
      DeleteProjectById deleteProjectById =
          DeleteProjectById(appRepositories: mockAppRepositories);

      final result = await deleteProjectById(deleteProjectByIdParam);

      //expec.....
      expect(result.fold((l) => l, (r) => r), mockFailure);
    },
  );
}
