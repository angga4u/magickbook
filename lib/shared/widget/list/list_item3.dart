import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hyper_ui/core.dart';

class ListItem3 extends StatelessWidget {
  final String label;
  final String? value;
  final Function? onTap;
  final Color? color;
  final bool separator;

  const ListItem3({
    super.key,
    required this.label,
    this.separator = true,
    this.value,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Clipboard.setData(ClipboardData(text: value ?? ""));
      },
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    label,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: color,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "$value",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: separator ? 1.0 : 0.0,
            color: disabledColor.withOpacity(0.4),
          ),
        ],
      ),
    );
  }
}
