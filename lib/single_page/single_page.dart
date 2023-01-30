import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';
import 'package:ziarah_rasul/single_page/appbar_page.dart';
import 'package:ziarah_rasul/single_page/navbar_page.dart';

class single_page extends StatefulWidget {
  final List<Model_Daftar> daftar;
  final int index;
  const single_page({super.key, required this.daftar, required this.index});

  @override
  State<single_page> createState() => _single_pageState();
}

class _single_pageState extends State<single_page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar_page(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(color: kPrimaryColor),
              child: Container(
                // height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(kDefaultPadding),
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      widget.daftar[widget.index].nama,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kPrimaryColor,
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding / 2.5),
                      child: Text(
                        'Moisturizing Reduces Skin Problems – Moisturizing everyday can reduce the chance of developing extreme dryness or oiliness. Both extremes are harmful for skin and cause common skin conditions like acne Moisturizing Reduces Skin Problems – Moisturizing everyday can reduce the chance of developing extreme dryness or oiliness. Both extremes are harmful for skin and cause common skin conditions like acne.Moisturizing Reduces Skin Problems Moisturizing everyday can reduce the chance of ',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: kTextColor),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const navbar_page(),
    );
  }
}
