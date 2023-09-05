import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meme_app/data/repositories/app_repositories_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:meme_app/data/datasources/app_datasources.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/migrated_mocks.dart';
import 'meme_repositories_test.mocks.dart';

@GenerateMocks([AppDataSources])
void main() {
  final mockMemeDataSource = MockMemeDataSources();

  void setUpSuccessForGetMeme() {
    when(mockMemeDataSource.getMemes()).thenAnswer(
      (realInvocation) async => Right(mockListOfMemesModel),
    );
  }

  void setUpFailureForGetMeme() {
    when(mockMemeDataSource.getMemes()).thenAnswer(
      (realInvocation) async => const Left(mockFailure),
    );
  }

  test(
    'while calling getMemems we should get list of Meme Models',
    () async {
      final mockMemeRepositoriesImpl = AppRepositoriesImpl(
        memeDataSources: mockMemeDataSource,
      );
      setUpSuccessForGetMeme();

      final res = await mockMemeRepositoriesImpl.getMemes();

      expect(res.fold((l) => l, (r) => r), mockListOfMemesModel);
    },
  );
  test(
    'while calling getMemems we would get Failure response',
    () async {
      final mockMemeRepositoriesImpl = AppRepositoriesImpl(
        memeDataSources: mockMemeDataSource,
      );
      setUpFailureForGetMeme();

      final res = await mockMemeRepositoriesImpl.getMemes();

      expect(res.fold((l) => l, (r) => r), mockFailure);
    },
  );
}
