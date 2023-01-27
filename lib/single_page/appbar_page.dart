import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';

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
          'Doa Safar',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        centerTitle: true,
      );
  }

