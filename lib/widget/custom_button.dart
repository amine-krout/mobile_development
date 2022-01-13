import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  String button_text;
  final VoidCallback? callback;
  Custom_Button(this.button_text, [this.callback]);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: const Color(0xffe9e0b2),
        borderRadius: BorderRadius.circular(27),
      ),
      child: TextButton(
        child: Text(
          button_text,
          style: const TextStyle(
              fontFamily: 'Montserrat',
              color: Color(0xff003045),
              fontSize: 17,
              fontWeight: FontWeight.bold),
        ),
        onPressed: callback,
      ),
    );
  }
}
