import 'package:flutter_test/flutter_test.dart';
import 'package:youtube_portfolio_app/data/models/project_model.dart';

import '../../mocks/migrated_mocks.dart';

void main() {
  group('ProjectDataModel test', () {
    test('shoudl return json from ProjectModelFromJson', ()  {
      ProjectModel projectModel =
          ProjectModel.fromJson(mockResponse.data.first);

      expect(projectModel.id, 1);
      expect(projectModel.description,
          'Tech Stack : Flutter, Firebase,Gitlab,Fastlane');
      expect(projectModel.title, 'Academic Master');
      expect(projectModel.imageUrl,
          "https://firebasestorage.googleapis.com/v0/b/carrace12363891.appspot.com/o/project_3.png?alt=media&token=e85d265e-6c05-491f-ad4d-db4ee303d526");
      expect(projectModel.projectUrl,
          'https://play.google.com/store/apps/details?id=com.academic.master');
      expect(projectModel.projectCategory, 'e-learning');
    });

    test('shoudl Create json from ProjectModelToJson', () {
      final Map<String, dynamic> mockJson = mockResponse.data.first;

      ProjectModel projectModel = ProjectModel.fromJson(mockJson);

      Map<String, dynamic> resultJson = projectModel.toJson();

      expect(mockJson['id'], resultJson['id']);
      expect(mockJson['title'], resultJson['title']);
      expect(mockJson['description'], resultJson['description']);
      expect(mockJson['projectUrl'], resultJson['projectUrl']);
      expect(mockJson['imageUrl'], resultJson['imageUrl']);
      expect(mockJson['projectCategory'], resultJson['projectCategory']);
    });
  });
}
