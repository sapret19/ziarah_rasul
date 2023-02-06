import 'package:flutter/material.dart';
import 'package:ziarah_rasul/Home_detail/pencarian.dart';
import 'package:ziarah_rasul/Home_detail/pengumuman.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/kotak_icon.dart';
import 'package:ziarah_rasul/list_page.dart/list_doa_safar.dart';
import 'package:ziarah_rasul/single_page/single_page.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
  }) : super(key: key);

  final List<Model_doa_safar> Modeldoasafar = List.generate(
      nama.length, (index) => Model_doa_safar('${nama[index].toString()}'));
  final List<Model_pdf> Modelpdf = List.generate(
      pdf.length, (index) => Model_pdf('${pdf[index].toString()}'));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Pencarian(),
          Pengumuman(size: size),
          Column(
            children: [
              Row(
                children: [
                  Kotak_icon(
                    image: 'assets/icons/logo_safar.png',
                    title: 'Doa Safar' + '        ',
                    index: 45,
                  ),
                  Kotak_icon(
                    image: 'assets/icons/logo_safar.png',
                    title: 'Ziarah Rasul' + '    ',
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              // Baris Baru
              Row(
                children: [
                  Kotak_icon(
                    image: 'assets/icons/logo_safar.png',
                    title: 'Fikih Umrah' + '    ',
                  ),
                  Kotak_icon(
                    image: 'assets/icons/logo_safar.png',
                    title: 'Doa Umrah' + '      ',
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              // Baris Baru
              Row(
                children: [
                  Kotak_icon(
                    image: 'assets/icons/logo_safar.png',
                    title: 'Doa Mustajab',
                  ),
                  Kotak_icon(
                    image: 'assets/icons/logo_safar.png',
                    title: 'Lain-lain' + '          ',
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
