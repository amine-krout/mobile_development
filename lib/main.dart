import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:la_corda_car_rental/models/user.dart';
import 'package:la_corda_car_rental/services/auth.dart';
import 'package:la_corda_car_rental/wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      name: 'mobile development');
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
