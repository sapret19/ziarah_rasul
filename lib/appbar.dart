import 'dart:ui';

import 'package:flutter/material.dart';
import 'constants.dart';

AppBar BagianHead() {
  return AppBar(
    
    backgroundColor: kPrimaryColor,
    elevation: 0,
    title: Column(
      
      children: [
        Container(
          decoration: BoxDecoration(gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(200, 226, 126, 0.612),
                        Color.fromRGBO(111, 134, 44, 100)
                        ]),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              child: Image(
                image: const AssetImage('assets/images/Logo-ZR.png'),
                height: AppBar().preferredSize.height,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}



