import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    this.label,
    this.onTap,
    this.padding,
    super.key,
  });

  final String? label;
  final void Function()? onTap;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 10),
      child: InkWell(
        onTap: onTap,
        child: Chip(
          label: Text(label ?? ''),
        ),
      ),
    );
  }
}
