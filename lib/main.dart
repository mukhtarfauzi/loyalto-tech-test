import 'package:flutter/material.dart';
import 'package:loyaltotest/helpers/colors.dart';
import 'package:loyaltotest/helpers/fonts.dart';
import 'package:loyaltotest/screen/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: notoSansKrFont
      ),
      home: LoginScreen(),
    );
  }
}