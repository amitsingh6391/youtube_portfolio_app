import 'package:dio/dio.dart';
import 'package:youtube_portfolio_app/core/error/failure.dart';
import 'package:youtube_portfolio_app/data/models/project_model.dart';
import 'package:youtube_portfolio_app/domain/entities/project.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';

const mockProject = Project(
  id: 1,
  title: 'title',
  description: 'description',
  projectUrl: 'projectUrl',
  imageUrl: 'imageUrl',
  projectCategory: 'projectCategory',
);
const mockProject2 = Project(
  id: 2,
  title: 'title2',
  description: 'description2',
  projectUrl: 'projectUrl2',
  imageUrl: 'imageUrl2',
  projectCategory: 'projectCategory2',
);

const listMockProject = [mockProject, mockProject2];

const mockFailure = Failure(message: 'Server Failure');

const getProjectByFilterParam =
    GetProjectsByFilterParam(projectCategory: 'projectCategory');

const deleteProjectByIdParam = DeleteProjectByIdParam(id: 1);

const mockProjectModel1 = ProjectModel(
  id: 1,
  title: 'Academic Master',
  description: 'Tech Stack : Flutter, Firebase,Gitlab,Fastlane',
  projectUrl:
      'https://play.google.com/store/apps/details?id=com.academic.master',
  imageUrl:
      'https://firebasestorage.googleapis.com/v0/b/carrace12363891.appspot.com/o/project_3.png?alt=media&token=e85d265e-6c05-491f-ad4d-db4ee303d526',
  projectCategory: 'e-learning',
);
const mockProjectModel2 = ProjectModel(
  id: 2,
  title: 'Chicbee',
  description: 'Chicbee is online shopping app build in firebase+MongoDb',
  projectUrl:
      'https://play.google.com/store/apps/details?id=com.app.chicbeeapp',
  imageUrl:
      'https://firebasestorage.googleapis.com/v0/b/carrace12363891.appspot.com/o/project_4.png?alt=media&token=00b358d6-8137-444e-bd80-b935a455bf56',
  projectCategory: 'e-commerce',
);

const listMockProjectModel = [mockProjectModel1, mockProjectModel2];

Response mockResponse = Response(
    requestOptions: RequestOptions(
      path: 'https://example.com/api',
    ),
    statusCode: 200,
    data: [
      {
        "id": 1,
        "title": "Academic Master",
        "description": "Tech Stack : Flutter, Firebase,Gitlab,Fastlane",
        "projectUrl":
            "https://play.google.com/store/apps/details?id=com.academic.master",
        "imageUrl":
            "https://firebasestorage.googleapis.com/v0/b/carrace12363891.appspot.com/o/project_3.png?alt=media&token=e85d265e-6c05-491f-ad4d-db4ee303d526",
        "projectCategory": "e-learning"
      },
      {
        "id": 2,
        "title": "Chicbee",
        "description":
            "Chicbee is online shopping app build in firebase+MongoDb",
        "projectUrl":
            "https://play.google.com/store/apps/details?id=com.app.chicbeeapp",
        "imageUrl":
            "https://firebasestorage.googleapis.com/v0/b/carrace12363891.appspot.com/o/project_4.png?alt=media&token=00b358d6-8137-444e-bd80-b935a455bf56",
        "projectCategory": "e-commerce"
      }
    ]);

Response mockFailureResponse = Response(
    requestOptions: RequestOptions(
      path: 'https://example.com/api',
    ),
    statusCode: 400,
    data: []);

Response mockDeleteReponse = Response(
  data: {
    "id": {
      "fieldCount": 0,
      "affectedRows": 1,
      "insertId": 0,
      "info": "",
      "serverStatus": 34,
      "warningStatus": 0,
      "changedRows": 0
    }
  },
  requestOptions: RequestOptions(),
  statusCode: 200,
);
