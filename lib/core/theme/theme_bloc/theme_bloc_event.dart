part of 'theme_bloc.dart';

@freezed
class ThemeBlocEvent with _$ThemeBlocEvent {
  const factory ThemeBlocEvent.changeTheme({required bool isDarkTheme}) =
      _GetTheme;
}
