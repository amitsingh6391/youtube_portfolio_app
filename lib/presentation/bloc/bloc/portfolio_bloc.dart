import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_portfolio_app/core/error/failure.dart';
import 'package:youtube_portfolio_app/core/usecases/no_params.dart';
import 'package:youtube_portfolio_app/domain/entities/project.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';

part 'portfolio_event.dart';
part 'portfolio_state.dart';
part 'portfolio_bloc.freezed.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final GetProjects getProjects;
  final GetProjectsByFilter getProjectsByFilter;
  final DeleteProjectById deleteProjectById;

  PortfolioBloc(
      {required this.getProjects,
      required this.getProjectsByFilter,
      required this.deleteProjectById})
      : super(PortfolioState.initial()) {
    on<_GetProjects>((event, emit) async {
      emit(state.copyWith(loading: true));

      final res = await getProjects(NoParams());

      res.fold(
        (l) => emit(state.copyWith(loading: false, failure: l)),
        (r) => emit(state.copyWith(
          loading: false,
          projects: r,
        )),
      );
    });

    on<_GetProjectsByFilter>((event, emit) async {
      emit(state.copyWith(
        loading: true,
      ));

      final res = await getProjectsByFilter(
          GetProjectsByFilterParam(projectCategory: event.projectCategory));

      res.fold(
        (l) => emit(state.copyWith(loading: false, failure: l)),
        (r) => emit(state.copyWith(
          loading: false,
          projects: r,
        )),
      );
    });

    on<_DeleteProjectById>((event, emit) async {
      emit(state.copyWith(
        loading: true,
      ));

      final res = await deleteProjectById(DeleteProjectByIdParam(id: event.id),);

      res.fold(
        (l) => emit(state.copyWith(loading: false, failure: l)),
        (r) => add(const _GetProjects())
      );
    });
  }
}
