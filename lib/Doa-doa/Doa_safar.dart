import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';


class Doa_safar extends StatelessWidget {
  const Doa_safar({Key? key, this.image}) : super(key: key);

  final String? image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 7),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              image: DecorationImage(image: ExactAssetImage("$image")),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
          
          
        ],
      ),
    );
  }
}
