import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:mobrepra/Views/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            bgImage,
            height: height * 0.4,
            width: width,
            fit: BoxFit.cover,
          ),
          Text(
            appName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(appSlogan,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
}
