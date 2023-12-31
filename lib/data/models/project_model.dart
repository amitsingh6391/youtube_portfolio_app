import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_portfolio_app/domain/entities/project.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
class ProjectModel extends Project with _$ProjectModel {
  const factory ProjectModel({
    required int id,
    required String title,
    required String description,
    required String projectUrl,
    required String imageUrl,
    required String projectCategory,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}
