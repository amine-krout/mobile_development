import 'package:firebase_auth/firebase_auth.dart';

class LocalUser {
  final String uid;

  final UserInfo? userInfo;

  LocalUser({required this.uid, this.userInfo});
}
