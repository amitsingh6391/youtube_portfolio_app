import 'package:dartz/dartz.dart';
import 'package:youtube_portfolio_app/core/error/failure.dart';
import 'package:youtube_portfolio_app/data/datasources_impl/app_datasources_impl.dart';
import 'package:youtube_portfolio_app/data/models/project_model.dart';
import 'package:youtube_portfolio_app/domain/repositories/app_repositories.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';

class AppRepostioriesImpl implements AppRepositories {
  const AppRepostioriesImpl({required this.appDataSourcesImpl});

  final AppDataSourcesImpl appDataSourcesImpl;

  @override
  Future<Either<Failure, List<ProjectModel>>> getProjects() {
   return appDataSourcesImpl.getProjects();
  }

  @override
  Future<Either<Failure, List<ProjectModel>>> getProjectsByFilter(
      GetProjectsByFilterParam param) {
    return appDataSourcesImpl.getProjectsByFilter(param);
  }

  @override
  Future<Either<Failure, bool>> deleteProjectById(DeleteProjectByIdParam param) {
  return appDataSourcesImpl.deleteProjectById(param);
  }
}
