import 'package:flutter/material.dart';

class WeatherEditInputField extends StatelessWidget {
  const WeatherEditInputField({
    super.key,
    this.inputDecoration = const InputDecoration(),
    this.readOnly = false,
  });

  final InputDecoration inputDecoration;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: null,
      focusNode: null,
      undoController: null,
      decoration: inputDecoration,
      readOnly: readOnly,
    );
  }
}
