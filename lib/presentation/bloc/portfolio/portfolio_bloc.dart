import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_app/core/error/failure.dart';
import 'package:meme_app/core/usecases/empty_params.dart';
import 'package:meme_app/domain/entities/project.dart';
import 'package:meme_app/domain/usecases/delete_project_by_id.dart';
import 'package:meme_app/domain/usecases/get_projects.dart';

part 'portfolio_event.dart';
part 'portfolio_state.dart';
part 'portfolio_bloc.freezed.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final GetProjects getProjects;
  final DeleteProjectById deleteProjectById;
  PortfolioBloc({
    required this.getProjects,
    required this.deleteProjectById,
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
