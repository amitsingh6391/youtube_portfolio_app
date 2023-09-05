import 'package:dartz/dartz.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/core/usecases/usecases.dart';
import 'package:meme_app/domain/repositories/app_repositories.dart';

class DeleteProjectByIdParam {
  const DeleteProjectByIdParam({required this.id});
  final int id;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }
}

class DeleteProjectById implements UseCases<bool, DeleteProjectByIdParam> {
  const DeleteProjectById({
    required this.appRepositories,
  });

  final AppRepositories appRepositories;

  @override
  Future<Either<Failure, bool>> call(DeleteProjectByIdParam params) {
    return appRepositories.deleteProjectById(params);
  }
}
