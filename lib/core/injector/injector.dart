import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meme_app/core/theme/theme_bloc/theme_bloc.dart';
import 'package:meme_app/data/datasources/app_datasources.dart';
import 'package:meme_app/data/repositories/app_repositories_impl.dart';
import 'package:meme_app/domain/usecases/delete_project_by_id.dart';
import 'package:meme_app/domain/usecases/get_memes.dart';
import 'package:meme_app/domain/usecases/get_projects.dart';
import 'package:meme_app/domain/usecases/get_projects_by_filter.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(
    AppDataSourcesImpl(dio: getIt<Dio>()),
  );
  getIt.registerSingleton(
    AppRepositoriesImpl(memeDataSources: getIt<AppDataSourcesImpl>()),
  );
  getIt.registerSingleton(
    GetMemes(appRepositories: getIt<AppRepositoriesImpl>()),
  );

  getIt.registerSingleton(
    ThemeBloc(),
  );
  getIt.registerSingleton(
    GetProjects(appRepositories: getIt<AppRepositoriesImpl>()),
  );
  getIt.registerSingleton(
    GetProjectsByFilter(appRepositories: getIt<AppRepositoriesImpl>()),
  );
  getIt.registerSingleton(
    DeleteProjectById(appRepositories: getIt<AppRepositoriesImpl>()),
  );
}
