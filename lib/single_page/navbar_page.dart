import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';

class navbar_page extends StatelessWidget {
  const navbar_page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 30,
                offset: Offset(0, 1))
          ]),
      margin: EdgeInsets.only(bottom: 30, left: 40, right: 40),
      child: Padding(
        padding: const EdgeInsets.only(
            left: kDefaultPadding, right: kDefaultPadding),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  
                },
                icon: Image.asset(
                  "assets/images/left.png",
                  color: kPrimaryColor,
                  // scale: 0.1,
                )),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/right.png",
                  color: kPrimaryColor,
                ))
          ],
        ),
      ),
    );
  }
}
