import 'package:dartz/dartz.dart';
import 'package:youtube_portfolio_app/core/error/failure.dart';
import 'package:youtube_portfolio_app/domain/entities/project.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';

abstract class AppRepositories {
  Future<Either<Failure, List<Project>>> getProjects();
  Future<Either<Failure, List<Project>>> getProjectsByFilter(
    GetProjectsByFilterParam param,
  );
  Future<Either<Failure, bool>> deleteProjectById(DeleteProjectByIdParam param);
}
