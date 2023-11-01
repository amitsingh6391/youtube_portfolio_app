import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:youtube_portfolio_app/core/usecases/no_params.dart';
import 'package:youtube_portfolio_app/domain/repositories/app_repositories.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects.dart';

import '../../mocks/migrated_mocks.dart';
import 'get_projects_test.mocks.dart';

@GenerateMocks([AppRepositories])
void main() {
  final mockAppRepositories = MockAppRepositories();

  void setUpSuccessForProjects() async {
    when(mockAppRepositories.getProjects()).thenAnswer(
      (realInvocation) async => const Right(listMockProject),
    );
  }

  void setUpFailureForProjects() async {
    when(mockAppRepositories.getProjects()).thenAnswer(
      (realInvocation) async => const Left(mockFailure),
    );
  }

  test(
    'while calling getProject we should get list of projects',
    () async {
      setUpSuccessForProjects();

      GetProjects getProjects =
          GetProjects(appRepositories: mockAppRepositories);

      final result = await getProjects(NoParams());

      expect(result.fold((l) => l, (r) => r), listMockProject);
    },
  );

  test('while calling getProject we should get Failure', () async {
    setUpFailureForProjects();  //setUp

    GetProjects getProjects = GetProjects(appRepositories: mockAppRepositories); //Action

    final result = await getProjects(NoParams());

    expect(result.fold((l) => l, (r) => r), mockFailure);  //expec....
  });
}
