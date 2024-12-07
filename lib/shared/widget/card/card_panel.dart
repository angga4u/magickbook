import 'package:flutter/material.dart';

class CardPanel extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  const CardPanel({
    super.key,
    required this.children,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 0.0,
          ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Colors.grey[300]!,
        ),
        color: Colors.grey[100],
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Column(
        children: children,
      ),
    );
  }
}
