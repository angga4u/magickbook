//#TEMPLATE reuseable_outline_icon_button
import 'package:flutter/material.dart';

class QOutlineIconButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onPressed;
  final double? width;
  const QOutlineIconButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: 48,
      child: OutlinedButton.icon(
        icon: Icon(
          icon,
          color: const Color(0xff434d48),
        ),
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            color: Color(0xff434d48),
          ),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.green,
          side: const BorderSide(
            color: Color(0xffd9dbd9),
          ),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}

//#END
