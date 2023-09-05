import 'package:dartz/dartz.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/data/datasources/app_datasources.dart';
import 'package:meme_app/data/models/memes_model.dart';
import 'package:meme_app/domain/entities/project.dart';
import 'package:meme_app/domain/repositories/app_repositories.dart';
import 'package:meme_app/domain/usecases/delete_project_by_id.dart';

class AppRepositoriesImpl implements AppRepositories {
  const AppRepositoriesImpl({required this.memeDataSources});
  final AppDataSources memeDataSources;
  @override
  Future<Either<Failure, List<MemesModel>>> getMemes() {
    return memeDataSources.getMemes();
  }

  @override
  Future<Either<Failure, List<Project>>> getProjects() {
    return memeDataSources.getProjects();
  }

  @override
  Future<Either<Failure, bool>> deleteProjectById(
      DeleteProjectByIdParam param) {
    return memeDataSources.deleteProjectById(param);
  }
}
