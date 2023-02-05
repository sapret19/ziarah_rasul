import 'package:flutter/material.dart';
import 'package:ziarah_rasul/Home_detail/pencarian.dart';
import 'package:ziarah_rasul/Home_detail/pengumuman.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/kotak_icon.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

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
                    image: 'icons/logo_safar.png',
                    title: 'Doa Safar'+ '        ',
                  ),
                  Kotak_icon(
                    image: 'icons/logo_safar.png',
                    title: 'Ziarah Rasul'+ '    ',
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
                    image: 'icons/logo_safar.png',
                    title: 'Fikih Umrah'+ '    ',
                  ),
                  Kotak_icon(
                    image: 'icons/logo_safar.png',
                    title: 'Doa Umrah'+'      ',
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
                    image: 'icons/logo_safar.png',
                    title: 'Doa Mustajab',
                  ),
                  Kotak_icon(
                    image: 'icons/logo_safar.png',
                    title: 'Lain-lain'+ '          ',
                    
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
