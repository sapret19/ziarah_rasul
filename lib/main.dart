import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/home_screen.dart';
import 'package:ziarah_rasul/list_page.dart/list_page.dart';
import 'package:ziarah_rasul/single_page/single_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Panduan Umrah dan Ziarah Rasul',
        theme: ThemeData(
            scaffoldBackgroundColor: kBackgroundColor,
            primaryColor: kPrimaryColor,
            textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
            visualDensity: VisualDensity.adaptivePlatformDensity),

     home: const HomeScreen());

  }
}
