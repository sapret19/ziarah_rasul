import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/page/appbar_page.dart';
import 'package:ziarah_rasul/page/body_page.dart';
import 'package:ziarah_rasul/page/navbar_page.dart';

class single_page extends StatefulWidget {
  const single_page({super.key});

  @override
  State<single_page> createState() => _single_pageState();
}

class _single_pageState extends State<single_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_page(context),
      body: Body_Page(),
      bottomNavigationBar: navbar_page(),
    );
  }
}
