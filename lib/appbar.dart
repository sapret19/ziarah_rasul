import 'package:flutter/material.dart';
import 'constants.dart';

 AppBar BagianHead() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage('assets/images/Logo-ZR.png'),
            height: AppBar().preferredSize.height,
          ),
        ],
      ),
    );
  }
