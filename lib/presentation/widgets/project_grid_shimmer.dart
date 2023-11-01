import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:youtube_portfolio_app/core/app/responsive.dart';
import 'package:youtube_portfolio_app/core/theme/colors.dart';

class ProjectGridShimmer extends StatelessWidget {
  const ProjectGridShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            MediaQuery.of(context).size.width > PageBreakPoint.mobileMax
                ? 2
                : 1,
        childAspectRatio: 1.3,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Shimmer.fromColors(
            baseColor: YoutubePortfolioColors.greyColor,
            highlightColor: YoutubePortfolioColors.borderColor,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Shimmer.fromColors(
                    baseColor: YoutubePortfolioColors.greyColor,
                    highlightColor: YoutubePortfolioColors.borderColor,
                    child: Container(
                      decoration: BoxDecoration(
                        color: YoutubePortfolioColors.greyColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const CircleAvatar(),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20.0,
                          width: MediaQuery.of(context).size.width >
                                  PageBreakPoint.mobileMax
                              ? MediaQuery.of(context).size.width * 0.3
                              : MediaQuery.of(context).size.width * 0.7,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 10.0,
                          width: MediaQuery.of(context).size.width >
                                  PageBreakPoint.mobileMax
                              ? MediaQuery.of(context).size.width * 0.15
                              : MediaQuery.of(context).size.width * 0.4,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
