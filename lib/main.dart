import 'package:flutter/material.dart';
import 'package:wallet_app/screens/login_screen.dart';
import 'package:wallet_app/themes/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MyColor.darkPurpleColor),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: LoginView(),
      ),
    );
  }
}
