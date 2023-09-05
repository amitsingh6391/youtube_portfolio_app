import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meme_app/presentation/widgets/drawer_menu_tile.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        DrawerMenuTile(
          leadingIcon: const Icon(
            Icons.menu_outlined,
          ),
          onTap: () => context.pop(),
          title: 'YouTube Portfolio',
          isLogoEnable: true,
        ),
        DrawerMenuTile(
          leadingIcon: const Icon(
            Icons.home_outlined,
          ),
          onTap: () => context.pop(),
          title: 'Home',
        ),
        DrawerMenuTile(
          leadingIcon: const Icon(
            Icons.trending_up_outlined,
          ),
          onTap: () => context.pop(),
          title: 'Trending',
        ),
        const SizedBox(height: 10),
        const Divider(),
        const SizedBox(height: 10),
        DrawerMenuTile(
          leadingIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Icon(Icons.settings_outlined),
          ),
          onTap: () => context.pop(),
          title: 'Setting',
        ),
        DrawerMenuTile(
          leadingIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Icon(Icons.help_outline),
          ),
          onTap: () => context.pop(),
          title: 'Help',
        ),
        DrawerMenuTile(
          leadingIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Icon(Icons.feedback_outlined),
          ),
          onTap: () => context.pop(),
          title: 'Feedback',
        ),
      ],
    );
  }
}
