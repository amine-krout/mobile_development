import 'package:flutter/material.dart';

class Custom_Button_3 extends StatelessWidget {

  String my_text;
  Custom_Button_3(this.my_text);

  @override
  Widget build(BuildContext context) {
    return Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.6,
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
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
    );
  }
}