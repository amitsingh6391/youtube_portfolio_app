import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meme_app/presentation/bloc/portfolio/portfolio_bloc.dart';
import 'package:meme_app/presentation/widgets/drawer_menu_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({
    super.key,
  });

  Future<void> _addfeedback() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'recipient@example.com',
      queryParameters: {
        'subject': 'Subject of the email',
        'body': 'Body of the email',
      },
    );
    if (await canLaunchUrl(
      Uri.parse(emailLaunchUri.toString()),
    )) {
      await launchUrl(
        Uri.parse(emailLaunchUri.toString()),
      );
    }
  }

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
          onTap: () {
            context.read<PortfolioBloc>().add(
                  const PortfolioEvent.getProjectsByFilter(
                    'trending',
                  ),
                );
            context.pop();
          },
          title: 'Trending',
        ),
        const SizedBox(height: 10),
        const Divider(),
        const SizedBox(height: 10),
        DrawerMenuTile(
          leadingIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Icon(Icons.feedback_outlined),
          ),
          onTap: _addfeedback,
          title: 'Feedback',
        ),
      ],
    );
  }
}
