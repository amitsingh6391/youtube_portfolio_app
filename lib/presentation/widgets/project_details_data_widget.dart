import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_app/domain/entities/project.dart';
import 'package:meme_app/presentation/bloc/portfolio/portfolio_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailsDataWidget extends StatelessWidget {
  const ProjectDetailsDataWidget({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(project.imageUrl),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Text(project.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      project.description,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      if (await canLaunchUrl(
                        Uri.parse(project.projectUrl),
                      )) {
                        await launchUrl(
                          Uri.parse(project.projectUrl),
                        );
                      }
                    },
                    icon: const Icon(
                      Icons.link_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<PortfolioBloc>().add(
                            PortfolioEvent.deleteProjectById(project.id),
                          );
                    },
                    icon: const Icon(
                      Icons.delete_outline_outlined,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
