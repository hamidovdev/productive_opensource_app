import 'package:flutter/material.dart';

TextField WTextField(
  TextEditingController controller,
  BuildContext context,
  InputDecoration decoration,
  Color color,
  Function(String s) crc,
  bool isObscure,
) {
  return TextField(
    focusNode: FocusNode(),
    onChanged: (value) {
      controller.text = value;
      crc(value);
    },
    controller: controller,
    decoration: decoration,
    style: TextStyle(
      color: color,
    ),
    textInputAction: TextInputAction.next,
    obscureText: isObscure == true ? true : false,
    keyboardType: TextInputType.text,
  );
}
