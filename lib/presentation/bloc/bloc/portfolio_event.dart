part of 'portfolio_bloc.dart';

@freezed
class PortfolioEvent with _$PortfolioEvent {
  const factory PortfolioEvent.getProjects() = _GetProjects;

  const factory PortfolioEvent.getProjectsByFilter(String projectCategory) = _GetProjectsByFilter;

  const factory PortfolioEvent.deleteProjectById(int id) = _DeleteProjectById;
}