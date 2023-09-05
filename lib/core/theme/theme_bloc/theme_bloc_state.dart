part of 'theme_bloc.dart';

@freezed
class ThemeBlocState with _$ThemeBlocState {
  const factory ThemeBlocState({
    required bool isDarkTheme,
  }) = _ThemeBlocState;

  factory ThemeBlocState.initial({
    bool isDarkTheme = true,
  }) =>
      _ThemeBlocState(isDarkTheme: isDarkTheme);
}
