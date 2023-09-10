import 'package:flutter/material.dart';
import 'package:meme_app/core/constants/asset_path.dart';
import 'package:meme_app/core/constants/constants.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? errorMessage;
  final VoidCallback onRetryPressed;

  const CustomErrorWidget({
    super.key,
    required this.errorMessage,
    required this.onRetryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          errorMessage ?? notFoundAnyProjects,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 200,
          ),
          child: Image.asset(
            AssetPath.error404,
            fit: BoxFit.scaleDown,
          ),
        ),
        ElevatedButton(
          onPressed: onRetryPressed,
          child: const Text(
            'Retry',
          ),
        ),
      ],
    );
  }
}
