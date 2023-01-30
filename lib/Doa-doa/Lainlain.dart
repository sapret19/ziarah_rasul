import 'package:flutter/material.dart';

class Lainlain extends StatelessWidget {
  const Lainlain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SizedBox(
        //   width: 14,
        // ),
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 157,
                width: 154,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage("images/contoh.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
              ),
              Container(
                padding: EdgeInsets.only(right: 10, left: 12, bottom: 20),
                child: Text(
                  "LATIHANNN",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 3,
        ),
      ],
    );
  }
}
