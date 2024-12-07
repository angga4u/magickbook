//#TEMPLATE reuseable_outline_danger_button
import 'package:flutter/material.dart';

class QOutlineDangerButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  const QOutlineDangerButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: 48,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.red,
          side: const BorderSide(
            color: Colors.red,
          ),
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

//#END
