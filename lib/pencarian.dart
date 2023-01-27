import 'package:flutter/material.dart';
import 'constants.dart';

class Pencarian extends StatelessWidget {
  const Pencarian({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 48,
              width: 345,
              decoration: BoxDecoration(
                  color: Color.fromARGB(106, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      hintText: "Cari Bacaan...",
                      hintStyle: TextStyle(
                          color:
                              Color.fromARGB(226, 255, 255, 255)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.all(kDefaultPadding),
                      suffixIcon: Icon(Icons.search,
                          color:
                              Color.fromARGB(226, 255, 255, 255)))),
            ),
            
          ],
        )
      ],
    );
  }
}

