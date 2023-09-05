import 'package:flutter/material.dart';
import 'package:meme_app/core/app/responsive.dart';
import 'package:meme_app/presentation/widgets/drawer_list_view.dart';
import 'package:meme_app/presentation/widgets/project_grid_widget.dart';
import 'package:meme_app/presentation/widgets/project_type_list.dart';
import 'package:meme_app/presentation/widgets/theme_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = '/homepage';

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < PageBreakpoint.tabletMax
        ? const _MobilePortfolioHomePage()
        : const _DesktopPortfolioHomePage();
  }
}

class _MobilePortfolioHomePage extends StatelessWidget {
  const _MobilePortfolioHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: ThemeButtonWidget(),
          ),
        ],
      ),
      drawer: const Drawer(
        width: 250,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: DrawerListView(),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProjectTypeList(),
              ProjectGridWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _DesktopPortfolioHomePage extends StatelessWidget {
  const _DesktopPortfolioHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 3,
                  child: DrawerListView(),
                ),
                ...[
                  Expanded(
                    flex: 12,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 10),
                      child: Column(
                        children: [
                          const ProjectTypeList(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 1.25,
                            child: const SingleChildScrollView(
                                child: ProjectGridWidget()),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
                const Expanded(
                  flex: 1,
                  child: ThemeButtonWidget(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
