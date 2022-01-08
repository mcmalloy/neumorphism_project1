import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphism_project1/Utils/boxshadows.dart';
import 'package:neumorphism_project1/Utils/gradients.dart';

import 'Components/neumorphicButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color? neubackground = Colors.grey[300];
  Gradients gradients = Gradients();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neubackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NeumorphicButton(bottomShadow: darkShadowBottomRight, topShadow: lightshadowTopLeft, text: "Login"),
              NeumorphicButton(bottomShadow: darkShadowBottomLeft, topShadow: lightshadowTopRight, text: "Sign Up"),
            ],
          ),
        ],
      ),
    );
  }

  static BoxShadow lightshadowTopLeft = const BoxShadow(
      color: Colors.white,
      blurRadius: 15,
      spreadRadius: 1,
      offset: Offset(-4, -4));

  static BoxShadow darkShadowBottomRight = BoxShadow(
      color: Colors.grey.shade500,
      blurRadius: 15,
      offset: const Offset(4, 4),
      spreadRadius: 1);

  static BoxShadow darkShadowBottomLeft = BoxShadow(
      color: Colors.grey.shade500,
      blurRadius: 15,
      offset: const Offset(-4, 4),
      spreadRadius: 1);

  static BoxShadow lightshadowTopRight = const BoxShadow(
      color: Colors.white,
      blurRadius: 15,
      spreadRadius: 1,
      offset: Offset(4, -4));
}
