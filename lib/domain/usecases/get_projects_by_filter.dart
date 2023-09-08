import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/core/usecases/usecases.dart';
import 'package:meme_app/domain/entities/project.dart';
import 'package:meme_app/domain/repositories/app_repositories.dart';

class GetProjectsByFilterParam extends Equatable {
  const GetProjectsByFilterParam({
    required this.projectCategory,
  });

  final String projectCategory;

  Map<String, dynamic> toJson() {
    return {
      'projectCategory': projectCategory,
    };
  }

  @override
  List<Object?> get props => [projectCategory];
}

class GetProjectsByFilter
    implements UseCases<List<Project>, GetProjectsByFilterParam> {
  const GetProjectsByFilter({
    required this.appRepositories,
  });

  final AppRepositories appRepositories;
  @override
  Future<Either<Failure, List<Project>>> call(GetProjectsByFilterParam param) {
    return appRepositories.getProjectsByFilter(param);
  }
}
