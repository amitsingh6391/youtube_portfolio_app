import 'package:dartz/dartz.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/core/usecases/empty_params.dart';
import 'package:meme_app/core/usecases/usecases.dart';
import 'package:meme_app/domain/entities/project.dart';
import 'package:meme_app/domain/repositories/app_repositories.dart';

class GetProjects implements UseCases<List<Project>, NoParams> {
  const GetProjects({
    required this.appRepositories,
  });

  final AppRepositories appRepositories;
  @override
  Future<Either<Failure, List<Project>>> call(NoParams params) {
    return appRepositories.getProjects();
  }
}
