import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_portfolio_app/core/theme/theme_bloc/theme_bloc_bloc.dart';

class ThemeButtonWidget extends StatelessWidget {
  const ThemeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<ThemeBloc>().add(ThemeBlocEvent.changeTheme(
            isDarkTheme: !(context.read<ThemeBloc>().state.isDarkTheme)));
      },
      icon: const Icon(Icons.light_mode),
    );
  }
}
