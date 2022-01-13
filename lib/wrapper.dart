import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/authenticate.dart';
import 'package:la_corda_car_rental/home_page.dart';
import 'package:la_corda_car_rental/home_page_hamburger_on.dart';
import 'package:la_corda_car_rental/login_page.dart';
import 'package:la_corda_car_rental/models/user.dart';
import 'package:la_corda_car_rental/register_page.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<LocalUser?>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
