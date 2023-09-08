import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_app/core/injector/injector.dart';
import 'package:meme_app/core/theme/theme_bloc/theme_bloc.dart';
import 'package:meme_app/domain/usecases/delete_project_by_id.dart';
import 'package:meme_app/domain/usecases/get_projects.dart';
import 'package:meme_app/domain/usecases/get_projects_by_filter.dart';
import 'package:meme_app/presentation/bloc/portfolio/portfolio_bloc.dart';

class PortfolioBlocProvider extends StatelessWidget {
  const PortfolioBlocProvider({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (_) => ThemeBloc(),
        ),
        BlocProvider<PortfolioBloc>(
          create: (_) => PortfolioBloc(
            getProjects: getIt<GetProjects>(),
            deleteProjectById: getIt<DeleteProjectById>(),
            getProjectsByFilter: getIt<GetProjectsByFilter>(),
          )..add(
              const PortfolioEvent.getProjects(),
            ),
        ),
      ],
      child: child,
    );
  }
}
