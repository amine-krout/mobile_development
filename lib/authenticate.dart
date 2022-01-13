import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/login_page.dart';
import 'package:la_corda_car_rental/register_page.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn)
      return Login(toggleView: toggleView);
    else
      return Register(toggleView: toggleView);
  }
}
