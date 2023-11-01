import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:youtube_portfolio_app/core/constants/constants.dart';
import 'package:youtube_portfolio_app/core/error/failure.dart';
import 'package:youtube_portfolio_app/data/datasources_impl/app_datasources_impl.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';
import '../../mocks/migrated_mocks.dart';

import 'app_datasources_impl_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  final mockDio = MockDio();

  final mockProjectDataSource = AppDataSourcesImpl(dio: mockDio);

  group(
    'App DataSources test:',
    () {
      void setUpSuccessForGetDio(Response response) {
        when(mockDio.get(any)).thenAnswer((realInvocation) async => response);
      }

      void setUpFailureForGetDio(Response response) {
        when(mockDio.get(any)).thenAnswer((realInvocation) async => response);
      }

      void setUpSuccessForGetDioWithParam(
          Response response, GetProjectsByFilterParam param) {
        when(mockDio.get(
          AppConstants.projectByFilter,
          queryParameters: param.toJson(),
        )).thenAnswer((realInvocation) async => response);
      }

      void setUpFailureForGetDioWithParam(
          Response response, GetProjectsByFilterParam param) {
        when(mockDio.get(
          AppConstants.projectByFilter,
          queryParameters: param.toJson(),
        )).thenAnswer((realInvocation) async => response);
      }

      void setUpSuccessPost(Response response, DeleteProjectByIdParam param) {
        when(mockDio.post(
          AppConstants.projectDeleteById,
          data: param.toJson(),
        )).thenAnswer((realInvocation) async => response);
      }

      void setUpFailurePost(Response response, DeleteProjectByIdParam param) {
        when(mockDio.post(
          AppConstants.projectDeleteById,
          data: param.toJson(),
        )).thenAnswer((realInvocation) async => response);
      }

      test('while calling getProject We should get ProjectObject in Response',
          () async {
        setUpSuccessForGetDio(mockResponse);

        final result = await mockProjectDataSource.getProjects();

        expect(result.fold((l) => l, (r) => r), listMockProjectModel);
      });

      test(
        'while calling getProject We should get Failure in Response',
        () async {
          setUpFailureForGetDio(mockFailureResponse);

          final result = await mockProjectDataSource.getProjects();

          expect(result.fold((l) => l, (r) => r),
              const Failure(message: 'Failure : 400 ; null'));
        },
      );

      test(
          'while calling getProjectByFilter We should get ProjectObject in Response',
          () async {
        setUpSuccessForGetDioWithParam(mockResponse, getProjectByFilterParam);

        final result = await mockProjectDataSource
            .getProjectsByFilter(getProjectByFilterParam);

        expect(result.fold((l) => l, (r) => r), listMockProjectModel);
      });

      test('while calling getProjectByFilter We should get Failure in Response',
          () async {
        setUpFailureForGetDioWithParam(
            mockFailureResponse, getProjectByFilterParam);

        final result = await mockProjectDataSource
            .getProjectsByFilter(getProjectByFilterParam);

        expect(result.fold((l) => l, (r) => r),
            const Failure(message: 'Failure : 400 ; null'));
      });

      test('while calling deleteProjectById We should get true in Response',
          () async {
        //Setup..
        setUpSuccessPost(mockDeleteReponse, deleteProjectByIdParam);

        final result = await mockProjectDataSource
            .deleteProjectById(deleteProjectByIdParam);

        expect(result.fold((l) => l, (r) => r), true);
      });

      test('while calling deleteProjectById We should Failure', () async {
        //Setup..
        setUpFailurePost(mockFailureResponse, deleteProjectByIdParam);

        final result = await mockProjectDataSource
            .deleteProjectById(deleteProjectByIdParam);

        expect(result.fold((l) => l, (r) => r),
            const Failure(message: 'Failure : 400 ; null'));
      });
    },
  );
}
