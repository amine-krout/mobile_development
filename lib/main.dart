import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/Edit_Profile.dart';
import 'package:la_corda_car_rental/car_details.dart';
import 'package:la_corda_car_rental/give_my_car_on_rent.dart';
import 'package:la_corda_car_rental/home_page.dart';
import 'package:la_corda_car_rental/home_page_hamburger_on.dart';
import 'package:la_corda_car_rental/login_page.dart';
import 'package:la_corda_car_rental/login_with_mediaquery.dart';
import 'package:la_corda_car_rental/models/user.dart';
import 'package:la_corda_car_rental/my_ride.dart';
import 'package:la_corda_car_rental/payment_gateway.dart';
import 'package:la_corda_car_rental/services/auth.dart';
import 'package:la_corda_car_rental/wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyDVyo-RYYGLHWx0gA7ddTOJPFuZZQ4Yjn0',
    appId: '1:67389612075:android:446676dbba1f3a56a40a6e',
    messagingSenderId: '67389612075',
    projectId: 'mobile-development-e6a88',
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<LocalUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: const Wrapper(),
      catchError: (context, error) {
        print(error.toString());
      },
    );
  }
}
