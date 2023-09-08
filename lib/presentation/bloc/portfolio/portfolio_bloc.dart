import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/core/usecases/empty_params.dart';
import 'package:meme_app/domain/entities/project.dart';
import 'package:meme_app/domain/usecases/delete_project_by_id.dart';
import 'package:meme_app/domain/usecases/get_projects.dart';
import 'package:meme_app/domain/usecases/get_projects_by_filter.dart';

part 'portfolio_event.dart';
part 'portfolio_state.dart';
part 'portfolio_bloc.freezed.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final GetProjects getProjects;
  final DeleteProjectById deleteProjectById;
  final GetProjectsByFilter getProjectsByFilter;
  PortfolioBloc({
    required this.getProjects,
    required this.deleteProjectById,
    required this.getProjectsByFilter,
  }) : super(PortfolioState.initial()) {
    on<_GetProjects>((event, emit) async {
      emit(
        state.copyWith(
          loading: true,
        ),
      );

      final res = await getProjects(
        NoParams(),
      );

      res.fold(
        (l) => emit(
          state.copyWith(
            loading: false,
            failure: l,
          ),
        ),
        (r) => emit(
          state.copyWith(
            loading: false,
            projects: r,
          ),
        ),
      );
    });

    on<_GetProjectsByFilter>((event, emit) async {
      emit(
        state.copyWith(
          loading: true,
        ),
      );

      final res = await getProjectsByFilter(
        GetProjectsByFilterParam(
          projectCategory: event.projectCategory,
        ),
      );

      res.fold(
        (l) => emit(
          state.copyWith(
            loading: false,
            failure: l,
          ),
        ),
        (r) => emit(
          state.copyWith(
            loading: false,
            projects: r,
          ),
        ),
      );
    });

    on<_DeleteProjectByID>((event, emit) async {
      emit(
        state.copyWith(
          loading: true,
        ),
      );

      debugPrint('we are gone to delete projects');
      final res = await deleteProjectById(
        DeleteProjectByIdParam(
          id: event.id,
        ),
      );

      res.fold(
        (l) => emit(
          state.copyWith(
            loading: false,
            failure: l,
          ),
        ),
        (r) => add(const _GetProjects()),
      );
    });
  }
}
