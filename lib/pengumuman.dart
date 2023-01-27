import 'package:flutter/material.dart';
import 'constants.dart';

class Pengumuman extends StatelessWidget {
  const Pengumuman({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: size.height * 0.3,
        decoration: BoxDecoration(color: kPrimaryColor),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 128,
                  width: 241,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 128,
                  width: 241,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(20)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
