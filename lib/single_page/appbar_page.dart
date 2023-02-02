import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/home_screen.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';

AppBar AppBar_page(BuildContext context) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    leading: IconButton(
      onPressed: (() => Navigator.pop(context)),
      icon: Image.asset(
        'assets/images/back.png',
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: kDefaultPadding),
    ),
    title: Text(
      'Ziarah Rasul',
      style: TextStyle(
          fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20),
    ),
    centerTitle: true,
  );
}
