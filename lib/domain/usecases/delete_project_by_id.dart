import 'package:dartz/dartz.dart';
import 'package:youtube_portfolio_app/core/error/failure.dart';
import 'package:youtube_portfolio_app/core/usecases/usecases.dart';
import 'package:youtube_portfolio_app/domain/repositories/app_repositories.dart';

class DeleteProjectByIdParam {
  const DeleteProjectByIdParam({required this.id});
  final int id;

  Map<String, dynamic> toJson() {
    return {'id': id};
  }
}

class DeleteProjectById implements Usecases<bool, DeleteProjectByIdParam> {
  const DeleteProjectById({required this.appRepositories});

  final AppRepositories appRepositories;

  @override
  Future<Either<Failure, bool>> call(DeleteProjectByIdParam params) {
   return  appRepositories.deleteProjectById(params);
  }
}
