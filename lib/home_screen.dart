import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: BagianHead(),
        body: Column(
          children: [
            Container(
              height: size.height * 0.3,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: kPrimaryColor),
                  ),
                  Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(106, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      height: 48,
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            hintText: "Cari Bacaan...",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(226, 255, 255, 255)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.all(kDefaultPadding),
                            suffixIcon: Icon(Icons.search,
                                color: Color.fromARGB(226, 255, 255, 255))),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 20,
                    child: Row(
                      children: [
                        Container(
                          height: 128,
                          width: 241,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 20,
                                  left: 24,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 63,
                                        width: 5,
                                        decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                      
                                    ],
                                  ),),
                              Positioned(
                                top: 25,
                                left: 38,
                                child: Row(
                                children: [
                                  Text("Ziaroh Rosul \nKe-18",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryColor
                                  )),
                                  
                                  
                                  
                                ],
                              ))
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  AppBar BagianHead() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage('images/logo-zr.png'),
            height: AppBar().preferredSize.height,
          ),
        ],
      ),
    );
  }
}
