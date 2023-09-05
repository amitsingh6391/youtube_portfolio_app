import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_app/core/theme/theme_bloc/theme_bloc.dart';

class ThemeButtonWidget extends StatelessWidget {
  const ThemeButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<ThemeBloc>(context).add(
          ThemeBlocEvent.changeTheme(
            isDarkTheme:
                !(BlocProvider.of<ThemeBloc>(context).state.isDarkTheme),
          ),
        );
      },
      icon: const Icon(
        Icons.light_mode,
      ),
    );
  }
}
