import 'package:flutter/material.dart';
import 'package:youtube_portfolio_app/core/constants/asset_path.dart';
import 'package:youtube_portfolio_app/core/constants/constants.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.errorMessage,
    required this.onRetryPressed,
  });
  final String? errorMessage;
  final VoidCallback onRetryPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          errorMessage ?? AppConstants.notFoundAnyProjects,
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
