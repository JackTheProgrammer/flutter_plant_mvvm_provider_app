import 'package:flutter/material.dart';
import 'package:plant_app_mvvm/core/config/hint_style_utils.dart';

import '/view/screens/login_screen.dart';
import '../../core/config/color_utils.dart';
import 'home_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 80),
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kDarkestGreen,
                ),
              ),
              const Text(
                "Create your new account",
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: "Full name",
                  hintStyle: hintStyle,
                  prefixIcon: Icon(
                    Icons.person,
                    color: kSimpleGreen,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: kFillingGreen,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email address",
                  hintStyle: hintStyle,
                  prefixIcon: Icon(
                    Icons.email,
                    color: kSimpleGreen,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: kFillingGreen,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: hintStyle,
                  prefixIcon: Icon(
                    Icons.password,
                    color: kSimpleGreen,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: kFillingGreen,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kFillingGreen,
                  hintText: "Confirm password",
                  hintStyle: hintStyle,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: kSimpleGreen,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 220,
              ),
              SizedBox(
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
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Sign Up"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Already a member?",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Login here",
                      style: TextStyle(
                        color: kDarkestGreen,
                        fontSize: 18.0,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
