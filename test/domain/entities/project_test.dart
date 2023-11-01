import 'package:flutter_test/flutter_test.dart';

import '../../mocks/migrated_mocks.dart';

void main() {
  test(
    'will test our project entites field',
    () async {
      const project = mockProject;

      expect(project.id, equals(1));
      expect(project.title, equals('title'));
      expect(project.description, equals('description'));
      expect(project.imageUrl, equals('imageUrl'));
      expect(project.projectUrl, equals('projectUrl'));
      expect(project.projectCategory, equals('projectCategory'));
    },
  );
}
