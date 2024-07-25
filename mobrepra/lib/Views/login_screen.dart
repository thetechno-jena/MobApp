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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              Image.asset(
                bgImage,
                height: height * 0.45,
                width: width,
                fit: BoxFit.cover,
              ),
              Container(
                height: height * 0.45,
                width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        stops: [0.3, 0.8],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.white])),
                // color: Colors.orange.withOpacity(0.5),
              ),
            ],
          ),
          Text(
            appName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            appSlogan,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade500),
          )
        ],
      ),
    );
  }
}
