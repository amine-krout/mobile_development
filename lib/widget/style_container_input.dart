import 'package:flutter/material.dart';

class Customised_container extends StatelessWidget {
  String hint_text;
  TextInputType a;
  bool b;

  Customised_container(this.hint_text, this.a, this.b);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 340,
      decoration: BoxDecoration(
        color: const Color.fromARGB(204, 0, 48, 69),
        borderRadius: BorderRadius.circular(27),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextField(
          decoration: InputDecoration(
            hintText: hint_text,
            hintStyle: const TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xff478878),
            ),
            border: InputBorder.none,
          ),
          onTap: () {},
          keyboardType: a,
          obscureText: b,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
