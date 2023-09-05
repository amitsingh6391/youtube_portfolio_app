import 'package:dartz/dartz.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/domain/entities/memes.dart';
import 'package:meme_app/domain/entities/project.dart';
import 'package:meme_app/domain/usecases/delete_project_by_id.dart';

abstract class AppRepositories {
  Future<Either<Failure, List<Meme>>> getMemes();
  Future<Either<Failure, List<Project>>> getProjects();
  Future<Either<Failure, bool>> deleteProjectById(
    DeleteProjectByIdParam param,
  );
}
