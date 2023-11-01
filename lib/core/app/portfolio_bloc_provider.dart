import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_portfolio_app/core/injector/injector.dart';
import 'package:youtube_portfolio_app/core/theme/theme_bloc/theme_bloc_bloc.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';
import 'package:youtube_portfolio_app/presentation/bloc/bloc/portfolio_bloc.dart';

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
              getProjectsByFilter: getIt<GetProjectsByFilter>(),
              deleteProjectById: getIt<DeleteProjectById>())
            ..add(
              const PortfolioEvent.getProjects(),
            ),
        )
      ],
      child: child,
    );
  }
}
