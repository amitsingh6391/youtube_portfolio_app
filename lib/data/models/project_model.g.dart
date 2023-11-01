// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectModel _$$_ProjectModelFromJson(Map<String, dynamic> json) =>
    _$_ProjectModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      projectUrl: json['projectUrl'] as String,
      imageUrl: json['imageUrl'] as String,
      projectCategory: json['projectCategory'] as String,
    );

Map<String, dynamic> _$$_ProjectModelToJson(_$_ProjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'projectUrl': instance.projectUrl,
      'imageUrl': instance.imageUrl,
      'projectCategory': instance.projectCategory,
    };
