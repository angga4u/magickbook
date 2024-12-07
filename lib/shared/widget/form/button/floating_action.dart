import 'package:flutter/material.dart';

Widget FloatingAction({
  required Function onPressed,
}) {
  return FloatingActionButton(
    heroTag: UniqueKey(),
    onPressed: () => onPressed(),
    child: const Icon(Icons.add),
  );
}
