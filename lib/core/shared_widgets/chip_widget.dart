import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    this.label,
    this.onTap,
    this.padding,
    super.key,
  });

  final String? label;

  final double? padding;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 10.0),
      child: InkWell(
        onTap: onTap,
        child: Chip(label: Text(label ?? '')),
      ),
    );
  }
}
