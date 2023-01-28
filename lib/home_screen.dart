import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ziarah_rasul/Home_detail/Bagian_depan.dart';
import 'package:ziarah_rasul/Home_detail/pencarian.dart';
import 'package:ziarah_rasul/Home_detail/pengumuman.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

        backgroundColor: kPrimaryColor,

        appBar: BagianHead(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: kPrimaryColor),
                // kolom pencarian
                child: Pencarian(),
              ),
              Pengumuman(size: size),
              Bagian_depan()
            ],
          ),
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
            image: const AssetImage('assets/images/Logo-ZR.png'),
            height: AppBar().preferredSize.height,
          ),
        ],
      ),
    );
  }
}

