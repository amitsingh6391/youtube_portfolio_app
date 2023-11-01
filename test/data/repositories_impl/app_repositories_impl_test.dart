import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:youtube_portfolio_app/data/datasources_impl/app_datasources_impl.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';
import '../../mocks/migrated_mocks.dart';
import 'app_repositories_impl_test.mocks.dart';

@GenerateMocks([AppDataSourcesImpl])
void main() {
  final mockAppDataSourcesImpl = MockAppDataSourcesImpl();

  void setUpSuccessForGetProjects() {
    when(mockAppDataSourcesImpl.getProjects()).thenAnswer(
        (realInvocation) async => const Right(listMockProjectModel));
  }

  void setUpFailureForGetProjects() {
    when(mockAppDataSourcesImpl.getProjects())
        .thenAnswer((realInvocation) async => const Left(mockFailure));
  }

  void setUpSuccessForGetProjectsByFilter(GetProjectsByFilterParam? param) {
    when(mockAppDataSourcesImpl.getProjectsByFilter(param)).thenAnswer(
        (realInvocation) async => const Right(listMockProjectModel));
  }

   void setUpFailureForGetProjectsByFilter(GetProjectsByFilterParam? param) {
    when(mockAppDataSourcesImpl.getProjectsByFilter(param)).thenAnswer(
        (realInvocation) async => const Left(mockFailure));
  }

    void setUpSuccessForDeleteProjectById(DeleteProjectByIdParam? param) {
    when(mockAppDataSourcesImpl.deleteProjectById(param)).thenAnswer(
        (realInvocation) async => const Right(true));
  }


    void setUpFailureForDeleteProjectById(DeleteProjectByIdParam? param) {
    when(mockAppDataSourcesImpl.deleteProjectById(param))
        .thenAnswer((realInvocation) async => const Left(mockFailure));
  }

  test('while calling getProjects we should get list of projects', () async {
    // setUP
    setUpSuccessForGetProjects();

    //Action
    final result = await mockAppDataSourcesImpl.getProjects();

    //Expect...

    expect(result.fold((l) => l, (r) => r), listMockProjectModel);
  });

  test('while calling getProjects we should get Failure', () async {
    // setUP
    setUpFailureForGetProjects();

    //Action
    final result = await mockAppDataSourcesImpl.getProjects();

    //Expect...

    expect(result.fold((l) => l, (r) => r), mockFailure);
  });

  test('while Calling getPrjectByFilter we should get list of projects',
      () async {
    setUpSuccessForGetProjectsByFilter(getProjectByFilterParam);

    final result = await mockAppDataSourcesImpl
        .getProjectsByFilter(getProjectByFilterParam);

    expect(result.fold((l) => l, (r) => r), listMockProjectModel);
  });

   test('while Calling getPrjectByFilter we should Failure',
      () async {
    setUpFailureForGetProjectsByFilter(getProjectByFilterParam);

    final result = await mockAppDataSourcesImpl
        .getProjectsByFilter(getProjectByFilterParam);

    expect(result.fold((l) => l, (r) => r), mockFailure);
  });

    test('while Calling DeleteProjectById we should true',
      () async {
    setUpSuccessForDeleteProjectById(deleteProjectByIdParam);

    final result = await mockAppDataSourcesImpl
        .deleteProjectById(deleteProjectByIdParam);

    expect(result.fold((l) => l, (r) => r), true);
  },);

     test(
    'while Calling DeleteProjectById we should Failure',
    () async {
      setUpFailureForDeleteProjectById(deleteProjectByIdParam);

      final result = await mockAppDataSourcesImpl
          .deleteProjectById(deleteProjectByIdParam);

      expect(result.fold((l) => l, (r) => r), mockFailure);
    },
  );
}
