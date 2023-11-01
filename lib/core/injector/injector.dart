import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:youtube_portfolio_app/core/theme/theme_bloc/theme_bloc_bloc.dart';
import 'package:youtube_portfolio_app/data/datasources_impl/app_datasources_impl.dart';
import 'package:youtube_portfolio_app/data/repositories_impl/app_repositories_impl.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton(Dio());

  getIt.registerSingleton(AppDataSourcesImpl(dio: getIt<Dio>()));

  getIt.registerSingleton(
      AppRepostioriesImpl(appDataSourcesImpl: getIt<AppDataSourcesImpl>()));

  getIt.registerSingleton(ThemeBloc());

  getIt.registerSingleton(
      GetProjects(appRepositories: getIt<AppRepostioriesImpl>()));
   getIt.registerSingleton(
      GetProjectsByFilter(appRepositories: getIt<AppRepostioriesImpl>()));
  getIt.registerSingleton(
      DeleteProjectById(appRepositories: getIt<AppRepostioriesImpl>()));
}
