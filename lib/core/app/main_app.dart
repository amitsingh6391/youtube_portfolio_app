import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_portfolio_app/core/app/portfolio_bloc_provider.dart';
import 'package:youtube_portfolio_app/core/navigation/route_genrator.dart';
import 'package:youtube_portfolio_app/core/theme/theme.dart';
import 'package:youtube_portfolio_app/core/theme/theme_bloc/theme_bloc_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioBlocProvider(
      child: BlocBuilder<ThemeBloc, ThemeBlocState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Youtube Portfolio with Mysql',
            routerConfig: RouteGenrator.router,
            theme:state.isDarkTheme? darkTheme: lightTheme,
          );
        },
      ),
    );
  }
}
