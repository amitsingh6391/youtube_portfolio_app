import 'package:flutter/material.dart';
import 'package:meme_app/core/shared_widgets/chip_widget.dart';

class ProjectTypeList extends StatelessWidget {
  const ProjectTypeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ChipWidget(
            label: 'E-learning',
          ),
          ChipWidget(
            label: 'E-commerce',
          ),
          ChipWidget(
            label: 'Matrimonial',
          ),
          ChipWidget(
            label: 'Fintech',
          ),
          ChipWidget(
            label: 'HealthCare',
          ),
          ChipWidget(
            label: 'Flutter Web',
          ),
          ChipWidget(
            label: 'Grocery',
          ),
          ChipWidget(
            label: 'Flutter + Firebase',
          )
        ],
      ),
    );
  }
}
