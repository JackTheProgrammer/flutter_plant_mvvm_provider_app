import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/view_model/cart_view_model.dart';
import '/view/screens/login_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartViewModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
