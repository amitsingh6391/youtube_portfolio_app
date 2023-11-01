import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:youtube_portfolio_app/core/constants/constants.dart';
import 'package:youtube_portfolio_app/core/error/failure.dart';
import 'package:youtube_portfolio_app/data/models/project_model.dart';
import 'package:youtube_portfolio_app/domain/datasources/app_datasources.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';

class AppDataSourcesImpl implements AppDataSources {
  const AppDataSourcesImpl({required this.dio});

  final Dio dio;

  @override
  Future<Either<Failure, List<ProjectModel>>> getProjects() async {
    final response = await dio.get(AppConstants.projectGet);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return Right(
        (response.data as List<dynamic>)
            .map(
              (e) => ProjectModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );
    } else {
      return Left(
        Failure(
            message:
                'Failure : ${response.statusCode} ; ${response.statusMessage}'),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProjectModel>>> getProjectsByFilter(
      GetProjectsByFilterParam param) async {
    final response = await dio.get(
      AppConstants.projectByFilter,
      queryParameters: param.toJson(),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return Right(
        (response.data as List<dynamic>)
            .map(
              (e) => ProjectModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );
    } else {
      return Left(
        Failure(
            message:
                'Failure : ${response.statusCode} ; ${response.statusMessage}'),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> deleteProjectById(
      DeleteProjectByIdParam param) async {
    final response = await dio.post(
      AppConstants.projectDeleteById,
      data: param.toJson(),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final isDeleted = response.data['id']['affectedRows'];
      return Right(isDeleted != 0);

    } else {
      return Left(
        Failure(
            message:
                'Failure : ${response.statusCode} ; ${response.statusMessage}'),
      );
    }
  }
}
