import 'package:dartz/dartz.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/core/usecases/empty_params.dart';
import 'package:meme_app/core/usecases/usecases.dart';
import 'package:meme_app/domain/entities/memes.dart';
import 'package:meme_app/domain/repositories/app_repositories.dart';

class GetMemes implements UseCases<List<Meme>, NoParams> {
  const GetMemes({
    required this.appRepositories,
  });

  final AppRepositories appRepositories;
  @override
  Future<Either<Failure, List<Meme>>> call(NoParams params) {
    return appRepositories.getMemes();
  }
}
