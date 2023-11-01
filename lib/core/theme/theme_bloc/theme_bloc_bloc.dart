import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_bloc_event.dart';
part 'theme_bloc_state.dart';
part 'theme_bloc_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeBlocEvent, ThemeBlocState> {
  ThemeBloc() : super(ThemeBlocState.initial()) {
    on<ThemeBlocEvent>((event, emit) {
      emit(state.copyWith(
        isDarkTheme: event.isDarkTheme
      ));
    });
  }
}
