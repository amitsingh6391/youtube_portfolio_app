import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_portfolio_app/core/shared_widgets/chip_widget.dart';
import 'package:youtube_portfolio_app/presentation/bloc/bloc/portfolio_bloc.dart';

class ProjectTypeList extends StatefulWidget {
  const ProjectTypeList({super.key});

  @override
  State<ProjectTypeList> createState() => _ProjectTypeListState();
}

class _ProjectTypeListState extends State<ProjectTypeList> {
  final List<String> _projectCategory = [
    'All',
    'E-learning',
    'E-commerce',
    'Matrimonial',
    'flutter',
    'HealthCare',
    'Flutter-web',
    'Grocery',
    'Flutter+Firebase'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ..._projectCategory.map(
            (category) => ChipWidget(
              label: category,
              onTap: () {
                if (category == 'All') {
                  context.read<PortfolioBloc>().add(
                        const PortfolioEvent.getProjects(),
                      );
                } else {
                  context.read<PortfolioBloc>().add(
                        PortfolioEvent.getProjectsByFilter(
                          category.toLowerCase(),
                        ),
                      );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
