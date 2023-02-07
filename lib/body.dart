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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pencarian(),
          Pengumuman(size: size),
          Container(
            transform: Matrix4.translationValues(0, -70.0, 1),
            child: Column(
              
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Kotak_icon(
                      image: 'assets/icons/logo_safar.png',
                      title: 'Doa Safar' + '        ',
                      index: 45,
                    ),
                    SizedBox(
            width: 20,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Kotak_icon(
                      image: 'assets/icons/logo_safar.png',
                      title: 'Fikih Umrah' + '    ',
                    ),
                    SizedBox(
            width: 20,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Kotak_icon(
                      image: 'assets/icons/logo_safar.png',
                      title: 'Doa Mustajab',
                    ),
                    SizedBox(
            width: 20,
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
            ),
          )
        ],
      ),
    );
  }
}
