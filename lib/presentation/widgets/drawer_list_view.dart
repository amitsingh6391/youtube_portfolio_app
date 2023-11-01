import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_portfolio_app/presentation/bloc/bloc/portfolio_bloc.dart';
import 'package:youtube_portfolio_app/presentation/widgets/drawer_menu_tile.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

 Future<void> _addFeedback() async {
    final Uri emailLaunchUrl = Uri(
      scheme: 'mailto',
      path: 'amitsingh506142@gmail.com',
      queryParameters: {
        'subject':'Subject for mail',

        'body':'Body of mail'
      }
    );

    if (await canLaunchUrl(emailLaunchUrl)) {
      await launchUrl(
       emailLaunchUrl
      );
    }
    {}
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        DrawerMenuTile(
          leadingIcon: const Icon(Icons.menu_outlined),
          onTap: () => context.pop(),
          title: 'Yotube Portfolio',
          isLogoEnabled: true,
        ),
        DrawerMenuTile(
          leadingIcon: const Icon(Icons.home_outlined),
          onTap: () => context.pop(),
          title: 'Home',
        ),
        DrawerMenuTile(
          leadingIcon: const Icon(Icons.trending_up_outlined),
          onTap: () {
            context.read<PortfolioBloc>().add(
                  const PortfolioEvent.getProjectsByFilter(
                    'trending',
                  ),
                );
          },
          title: 'Trending',
        ),
        const SizedBox(
          width: 10,
        ),
        const Divider(),
        const SizedBox(
          width: 10,
        ),
        DrawerMenuTile(
          leadingIcon: const Icon(Icons.feedback_outlined),
          onTap: _addFeedback,
          title: 'Feedback',
        ),
      ],
    );
  }
}
