part of 'portfolio_bloc.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState({
    required bool loading,
    List<Project>? projects,
    Failure? failure,
  }) = _PortfolioState;

  factory PortfolioState.initial({
    bool loading = false,
    List<Project>? projects,
    Failure? failure,
  }) =>
      _PortfolioState(
        loading: loading,
        projects: projects,
        failure: failure,
      );
}
