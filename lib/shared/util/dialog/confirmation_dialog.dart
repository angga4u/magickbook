import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

Future<bool> showConfirmationDialog({
  String? message,
}) async {
  bool confirm = false;
  await showDialog<void>(
    context: globalContext,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Confirm',
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message ?? 'Are you sure you want to delete this item?'),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: QButton(
                      label: "No",
                      size: sm,
                      color: disabledColor,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: QButton(
                      label: "Yes",
                      size: sm,
                      onPressed: () {
                        confirm = true;
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );

  return Future.value(confirm);
}
