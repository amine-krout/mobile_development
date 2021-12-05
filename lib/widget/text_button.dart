import 'dart:ui';

import 'package:flutter/material.dart';

class Text_button extends StatelessWidget {

  String text_input;
  Text_button(this.text_input);
  @override
  Widget build(BuildContext context) {
    return TextButton(
                  onPressed: () {},
                  child: Text(
                    text_input,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        decoration: TextDecoration.underline,
                        color: Color(0xff003045)),
                  ),
                );
  }
}