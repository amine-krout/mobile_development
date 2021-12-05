import 'package:flutter/material.dart';

class Custom_Button_2 extends StatelessWidget {

  String my_text;
  Custom_Button_2(this.my_text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
                width: 220,
                decoration: BoxDecoration(
                  color: const Color(0xff003045),
                  borderRadius: BorderRadius.circular(27),
                ),
                child: TextButton(
                  child: Text(
                    my_text,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xffe9e0b2),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
    );
  }
}