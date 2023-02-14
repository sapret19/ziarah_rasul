import 'package:flutter/material.dart';
import 'package:ziarah_rasul/Post/Global_post.dart';
import 'package:ziarah_rasul/body2.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/head.dart';
import 'package:ziarah_rasul/home_navbar.dart';
import 'package:ziarah_rasul/home_screen.dart';
import 'package:ziarah_rasul/home_view.dart';
// import 'package:ziarah_rasul/list_page.dart/daftar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:ziarah_rasul/list_page.dart/opsi1.dart';
import 'package:ziarah_rasul/list_page.dart/list_doa_safar.dart';
import 'package:ziarah_rasul/list_page.dart/list_page.dart';
import 'package:ziarah_rasul/list_page.dart/opsi2.dart';
import 'package:ziarah_rasul/screen.dart';
import 'package:ziarah_rasul/single_page/single_page.dart';
import 'package:ziarah_rasul/screen.dart';

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
        home: Screen());
  }
}
