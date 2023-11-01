import 'package:dartz/dartz.dart';
import 'package:youtube_portfolio_app/core/error/failure.dart';

abstract class Usecases<Type, Params> {
Future<Either<Failure,Type>>  call(Params params);
}
