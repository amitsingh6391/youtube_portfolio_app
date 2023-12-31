import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_portfolio_app/core/app/responsive.dart';
import 'package:youtube_portfolio_app/core/shared_widgets/custom_error_widget.dart';
import 'package:youtube_portfolio_app/presentation/bloc/bloc/portfolio_bloc.dart';
import 'package:youtube_portfolio_app/presentation/widgets/project_detail_data_widget.dart';
import 'package:youtube_portfolio_app/presentation/widgets/project_grid_shimmer.dart';

class ProjectGridWidget extends StatelessWidget {
  const ProjectGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: BlocBuilder<PortfolioBloc, PortfolioState>(
        builder: (context, state) {
          if (state.loading) {
            return const ProjectGridShimmer();
          } else if ((state.projects == null) ||
              state.projects != null && state.projects!.isEmpty) {
            return CustomErrorWidget(
              errorMessage: state.failure?.message,
              onRetryPressed: () {
                context.read<PortfolioBloc>().add(
                      const PortfolioEvent.getProjects(),
                    );
              },
            );
          }

          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  MediaQuery.of(context).size.width > PageBreakPoint.mobileMax
                      ? 2
                      : 1,
              childAspectRatio: 1.3,
            ),
            itemCount: state.projects?.length,
            itemBuilder: (BuildContext context, int index) {
              final project = state.projects![index];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                project.imageUrl,
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ProjectDetailsDataWidget(
                      project: project,
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
