import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meme_app/core/constants/asset_path.dart';
import 'package:meme_app/core/theme/colors.dart';

class DrawerMenuTile extends StatelessWidget {
  const DrawerMenuTile({
    required this.leadingIcon,
    required this.title,
    required this.onTap,
    this.isLogoEnable = false,
    super.key,
  });

  final Widget leadingIcon;
  final String title;
  final void Function()? onTap;
  final bool isLogoEnable;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            leadingIcon,
            const SizedBox(
              width: 20,
            ),
            if (isLogoEnable)
              SvgPicture.asset(
                AssetPath.youtubeLogo,
                colorFilter: const ColorFilter.mode(
                  YoutubePortfolio.redColor,
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
