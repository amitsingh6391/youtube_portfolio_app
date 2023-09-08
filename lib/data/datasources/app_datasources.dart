import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meme_app/core/constants/constants.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/data/models/project_model.dart';
import 'package:meme_app/domain/usecases/delete_project_by_id.dart';
import 'package:meme_app/domain/usecases/get_projects_by_filter.dart';

import '../models/memes_model.dart';

abstract class AppDataSources {
  Future<Either<Failure, List<MemesModel>>> getMemes();
  Future<Either<Failure, List<ProjectModel>>> getProjects();
  Future<Either<Failure, bool>> deleteProjectById(DeleteProjectByIdParam param);

  Future<Either<Failure, List<ProjectModel>>> getProjectsByFilter(
    GetProjectsByFilterParam param,
  );
}

class AppDataSourcesImpl implements AppDataSources {
  const AppDataSourcesImpl({
    required this.dio,
  });
  final Dio dio;

  @override
  Future<Either<Failure, List<MemesModel>>> getMemes() async {
    final response = await dio.get(baseUrl);

    if (response.statusCode == 200) {
      return Right(
        (response.data['data']['memes'] as List<dynamic>)
            .map(
              (e) => MemesModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );
    } else {
      return const Left(
        Failure(message: 'Server Failure'),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProjectModel>>> getProjects() async {
    final response = await dio.get(projectGet);

    if (response.statusCode == 200) {
      return Right(
        (response.data as List<dynamic>)
            .map(
              (e) => ProjectModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );
    } else {
      return const Left(
        Failure(message: 'Server Failure'),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> deleteProjectById(
      DeleteProjectByIdParam param) async {
    final response = await dio.post(
      projectDeleteById,
      data: param.toJson(),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final isDeleted = response.data['id']['affectedRows'];
      return Right(isDeleted != 0);
    } else {
      return const Left(
        Failure(message: 'Server Failure'),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProjectModel>>> getProjectsByFilter(
      GetProjectsByFilterParam param) async {
    final response = await dio.get(
      projectByFilter,
      queryParameters: param.toJson(),
      options: Options(),
    );

    if (response.statusCode == 200) {
      return Right(
        (response.data as List<dynamic>)
            .map(
              (e) => ProjectModel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );
    } else {
      return const Left(
        Failure(message: 'Server Failure'),
      );
    }
  }
}
