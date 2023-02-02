import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';
import 'package:ziarah_rasul/single_page/appbar_page.dart';
import 'package:ziarah_rasul/single_page/navbar_page.dart';

class single_page extends StatefulWidget {
  final List<Model_doa_safar> list_doa_safar;
  int index;
  single_page({super.key, required this.list_doa_safar, required this.index});

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
              decoration: const BoxDecoration(color: kPrimaryColor),
              child: Container(
                // height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(kDefaultPadding),
                decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      widget.list_doa_safar[widget.index].nama,
                      style: const TextStyle(
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
                      padding: EdgeInsets.all(kDefaultPadding / 2.5),
                      child: Text(
                        widget.list_doa_safar[widget.index].nama,
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
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 30,
                  offset: const Offset(0, 1))
            ]),
        margin: const EdgeInsets.only(bottom: 30, left: 40, right: 40),
        child: Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPadding, right: kDefaultPadding),
          child: Row(
            children: [
              FloatingActionButton(
                heroTag: "f1",
                backgroundColor: Colors.white,
                mini: true,
                onPressed: () {
                  setState(() {
                    if (widget.index != 0) {
                      widget.index--;
                    }
                  });
                },
                child: Image.asset(
                  'assets/images/left.png',
                  color: kPrimaryColor,
                ),

                // scale: 0.1,
              ),
              const Spacer(),
              FloatingActionButton(
                  heroTag: "f2",
                  backgroundColor: Colors.white,
                  mini: true,
                  onPressed: () {
                    setState(() {
                      if (widget.index != widget.list_doa_safar.length - 1) {
                        widget.index++;
                      }
                    });
                  },
                  child: Image.asset(
                    'assets/images/right.png',
                    color: kPrimaryColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
