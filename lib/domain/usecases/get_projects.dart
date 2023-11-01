import 'package:dartz/dartz.dart';
import 'package:youtube_portfolio_app/core/error/failure.dart';
import 'package:youtube_portfolio_app/core/usecases/no_params.dart';
import 'package:youtube_portfolio_app/core/usecases/usecases.dart';
import 'package:youtube_portfolio_app/domain/entities/project.dart';
import 'package:youtube_portfolio_app/domain/repositories/app_repositories.dart';

class GetProjects implements Usecases<List<Project>,NoParams>{

GetProjects({required this.appRepositories});

final AppRepositories appRepositories;


 @override
  Future<Either<Failure, List<Project>>> call(params) {
    return appRepositories.getProjects();
  }
}