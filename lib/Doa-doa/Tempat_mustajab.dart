import 'package:flutter/material.dart';

class Tempat_mustajab extends StatelessWidget {
  const Tempat_mustajab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              // padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage("images/contoh.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.all(10),child: Text("COBA SAJA"),)
          ],
        ),
        SizedBox(width: 7,)
      ],
    );
  }
}