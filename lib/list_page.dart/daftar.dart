import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/home_screen.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';
import 'package:ziarah_rasul/single_page/single_page.dart';

class daftar extends StatelessWidget {
  daftar({super.key});

  static List<String> nama = [
    'Doa Keluar Rumah',
    'Shalat Safar',
    'Zikir dan Doa Setelah Shalat Safar',
    'Doa Naik Kendaraan',
    'Doa Ketika Akan Tiba di Tujuan'
  ];
  static List<Widget> link = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];
  final List<Model_Daftar> ModelDaftar = List.generate(nama.length,
      (index) => Model_Daftar('${nama[index].toString()}', '${link[index]}'));

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(
              ModelDaftar[index].nama,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: kTextColor),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      single_page(daftar: ModelDaftar, index: index)));
            },
          );
        }),
        separatorBuilder: ((context, index) {
          return Container(
            height: 1,
            margin: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(color: kPrimaryColor),
          );
        }),
        itemCount: nama.length);
  }
}
