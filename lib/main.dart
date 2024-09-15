import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homework_homescreen_product/screens/login_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login User',
      home: const LoginUser(),
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
    );
  }
}
