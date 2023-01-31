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

  final List<Model_doa_safar> Modeldoasafar = List.generate(
      nama.length, (index) => Model_doa_safar('${nama[index].toString()}'));

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(
              Modeldoasafar[index].nama,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: kTextColor),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      single_page(daftar: Modeldoasafar, index: index)));
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

List<String> nama = [
  'Doa Keluar Rumah',
  'Shalat Safar',
  'Zikir dan Doa Setelah Shalat Safar',
  'Doa Naik Kendaraan',
  'Doa Ketika Akan Tiba di Tujuan'
];
List<String> judul = [
  'Doa Safar',
  'Ziarah rasul',
  'Fikih Umrah',
  'Doa-Doa Umrah',
  'Tempat Mustajabah',
  'Istighosah, Waqiah, dan Doa',
  'Lain-Lain'
];
