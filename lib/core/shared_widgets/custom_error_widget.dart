import 'package:flutter/material.dart';
import 'package:meme_app/core/constants/asset_path.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onRetryPressed;

  const CustomErrorWidget({
    super.key,
    required this.errorMessage,
    required this.onRetryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          errorMessage,
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
