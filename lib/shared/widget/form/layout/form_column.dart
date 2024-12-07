// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class FormColumn extends StatelessWidget {
  final List<Widget> children;
  final GlobalKey<FormState>? formKey;
  final EdgeInsetsGeometry? padding;
  const FormColumn({
    super.key,
    required this.children,
    this.formKey,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: padding ?? const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
