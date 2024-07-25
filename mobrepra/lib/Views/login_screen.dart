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
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      appName,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                appSlogan,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "  Login",
                  style: TextStyle(fontSize: 18),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      priColor.withOpacity(0.2),
                      priColor.withOpacity(0.1)
                    ]),
                    border:
                        Border(left: BorderSide(color: priColor, width: 6))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: priColor)),
                    prefixIcon: Icon(Icons.email, color: priColor),
                    labelText: "Enter Your Email...",
                    labelStyle: TextStyle(color: priColor)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: priColor)),
                    prefixIcon: Icon(Icons.password, color: priColor),
                    labelText: "Enter Your Password...",
                    labelStyle: TextStyle(color: priColor)),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(color: priColor),
                    ))),
            Center(
              child: SizedBox(
                height: height * 0.08,
                width: width,
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(priColor)),
                    onPressed: () {},
                    child: Text(
                      "Login to Account",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
