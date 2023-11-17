import 'package:firstapp/Screens/SignUp_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class Loginandsignup extends StatefulWidget {
  const Loginandsignup({super.key});

  @override
  State<Loginandsignup> createState() => _LoginandsignupState();
}

class _LoginandsignupState extends State<Loginandsignup> {
  bool isLogin = true;
  void togglePage() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return LoginPage(
        onPressed: togglePage,
      );
    } else {
      return SignupPage(
        onpressed: togglePage,
      );
    }
  }
}
