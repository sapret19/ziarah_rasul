import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';

class Pencarian extends StatelessWidget {
  const Pencarian({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 48,
              width: ScreenSize.width * 0.89,
              decoration: BoxDecoration(
                  color: Color.fromARGB(106, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      hintText: "Cari Bacaan...",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(226, 255, 255, 255)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.all(kDefaultPadding),
                      suffixIcon: Icon(Icons.search,
                          color: Color.fromARGB(226, 255, 255, 255)))),
            ),
          ],
        )
      ],
    );
  }
}
