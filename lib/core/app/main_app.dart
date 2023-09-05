import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_app/core/app/portfolio_bloc_provider.dart';
import 'package:meme_app/core/navigation/route_generator.dart';
import 'package:meme_app/core/theme/theme.dart';
import 'package:meme_app/core/theme/theme_bloc/theme_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioBlocProvider(
      child: BlocBuilder<ThemeBloc, ThemeBlocState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Youtube Portfolio',
            theme: state.isDarkTheme ? darkTheme : lightTheme,
            routerConfig: RouteGenerator.router,
          );
        },
      ),
    );
  }
}
