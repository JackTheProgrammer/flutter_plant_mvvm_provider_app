import 'package:flutter/material.dart';
import 'package:plant_app_mvvm/core/color_utils.dart';
import 'package:plant_app_mvvm/core/hint_style_utils.dart';
import 'package:plant_app_mvvm/view/screens/home_screen.dart';
import '/view/screens/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // CustomPaint(
              //   painter: PlantAppCustomPainter(Colors.red),
              //   child: SizedBox(
              //     height: 150,
              //     width: double.infinity,
              //   ),
              // ),
              //
              // I didn't used my CustomPainter generated via retroportal's
              // flutter shape maker, and the result was absolutely nightmare for
              // any designer, or designer-developer.
              // The result of my drawn custom painter would give nightmare to
              // michael angelo and picasso in their graves.

              const SizedBox(
                height: 90,
              ),
              Text(
                "Welcome back",
                style: TextStyle(
                  color: kDarkestGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                "Login to your account",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green[200],
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Your email",
                    hintStyle: hintStyle,
                    prefixIcon: Icon(
                      Icons.email,
                      color: kSimpleGreen,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: kFillingGreen,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Your Password",
                    hintStyle: hintStyle,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: kSimpleGreen,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: kFillingGreen,
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: kSimpleGreen,
                  ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kDarkestGreen,
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign up here",
                      style: TextStyle(
                        color: kDarkestGreen,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
