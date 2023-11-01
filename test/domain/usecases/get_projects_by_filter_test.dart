import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';

import '../../mocks/migrated_mocks.dart';
import 'get_projects_test.mocks.dart';

void main() {
  final MockAppRepositories mockAppRepositories = MockAppRepositories();

  void setUpSuccessForGetProjectsByFilter(GetProjectsByFilterParam? param) {
    when(mockAppRepositories.getProjectsByFilter(param))
        .thenAnswer((realInvocation) async => const Right(listMockProject));
  }

  void setUpFailureForGetProjectsByFilter(GetProjectsByFilterParam? param) {
    when(mockAppRepositories.getProjectsByFilter(param))
        .thenAnswer((realInvocation) async => const Left(mockFailure));
  }

  test(
      'while calling getProjectByFilter we should get List of filtered projects',
      () async {
    setUpSuccessForGetProjectsByFilter(getProjectByFilterParam); //setUp

    GetProjectsByFilter getProjectsByFilter =
        GetProjectsByFilter(appRepositories: mockAppRepositories); //action/...

    final result = await getProjectsByFilter(getProjectByFilterParam);

    expect(result.fold((l) => l, (r) => r), listMockProject); // expec..
  });

  test(
      'while calling getProjectByFilter we should get Failure of filtered projects',
      () async {
    setUpFailureForGetProjectsByFilter(getProjectByFilterParam);

    GetProjectsByFilter getProjectsByFilter =
        GetProjectsByFilter(appRepositories: mockAppRepositories);

    final result = await getProjectsByFilter(getProjectByFilterParam);

    expect(result.fold((l) => l, (r) => r), mockFailure);
  });
}
