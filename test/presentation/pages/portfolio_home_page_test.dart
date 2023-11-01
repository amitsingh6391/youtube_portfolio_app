import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';

import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:youtube_portfolio_app/core/theme/theme_bloc/theme_bloc_bloc.dart';
import 'package:youtube_portfolio_app/domain/repositories/app_repositories.dart';
import 'package:youtube_portfolio_app/domain/usecases/delete_project_by_id.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects.dart';
import 'package:youtube_portfolio_app/domain/usecases/get_projects_by_filter.dart';
import 'package:youtube_portfolio_app/presentation/bloc/bloc/portfolio_bloc.dart';
import 'package:youtube_portfolio_app/presentation/pages/portfolio_home_page.dart';
import 'package:youtube_portfolio_app/presentation/widgets/project_detail_data_widget.dart';
import '../../mocks/migrated_mocks.dart';
import 'portfolio_home_page_test.mocks.dart';

class MockPortoflioBloc extends MockBloc<PortfolioEvent, PortfolioState>
    implements PortfolioBloc {}

class MockThemeBloc extends MockBloc<ThemeBlocEvent, ThemeBlocState>
    implements ThemeBloc {}

@GenerateMocks([AppRepositories])
void main() {
  final mockAuthRepositories = MockAppRepositories();

  final mockPortfolioBloc = MockPortoflioBloc();
  final mockThemeBloc = MockThemeBloc();

  final getIt = GetIt.instance;

  getIt.registerSingleton(
    GetProjects(
      appRepositories: mockAuthRepositories,
    ),
  );
  getIt.registerSingleton(
    GetProjectsByFilter(
      appRepositories: mockAuthRepositories,
    ),
  );
  getIt.registerSingleton(
    DeleteProjectById(
      appRepositories: mockAuthRepositories,
    ),
  );

  testWidgets(
    'test component of our home_page',
    (tester) async {
      final StreamController<PortfolioState> portfolioBlocStream =
          StreamController<PortfolioState>.broadcast();

      whenListen(
        mockPortfolioBloc,
        portfolioBlocStream.stream,
        initialState: PortfolioState.initial(),
      );

      await mockNetworkImages(
        () async => tester.pumpWidget(
          MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(
                create: (_) => mockThemeBloc,
              ),
              BlocProvider<PortfolioBloc>(
                create: (_) => mockPortfolioBloc
                  ..add(
                    const PortfolioEvent.getProjects(),
                  ),
              )
            ],
            child: const MaterialApp(
              home: HomePage(),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(AppBar), findsOneWidget);

      portfolioBlocStream.add(
        PortfolioState.initial(
          projects: listMockProject,
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(ProjectDetailsDataWidget), findsNWidgets(2));
    },
  );
}
