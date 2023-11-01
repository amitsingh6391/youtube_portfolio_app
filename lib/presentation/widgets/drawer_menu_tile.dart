import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube_portfolio_app/core/constants/asset_path.dart';
import 'package:youtube_portfolio_app/core/theme/colors.dart';

class DrawerMenuTile extends StatelessWidget {
  const DrawerMenuTile({
    required this.leadingIcon,
    required this.title,
    required this.onTap,
    this.isLogoEnabled = false,
    super.key,
  });

  final Widget leadingIcon;
  final String title;
  final void Function()? onTap;
  final bool isLogoEnabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            leadingIcon,
            const SizedBox(
              width: 20,
            ),
            if (isLogoEnabled)
              SvgPicture.asset(
                AssetPath.youtubeLogo,
                colorFilter: const ColorFilter.mode(
                  YoutubePortfolioColors.redColor,
                  BlendMode.srcIn,
                ),
              ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelLarge,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
