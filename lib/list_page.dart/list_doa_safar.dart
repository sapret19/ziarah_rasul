import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/home_screen.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';
import 'package:ziarah_rasul/single_page/appbar_page.dart';
import 'package:ziarah_rasul/single_page/single_page.dart';

class list_doa_safar extends StatelessWidget {
  final index;
  list_doa_safar({super.key, this.index});

  final List<Model_doa_safar> Modeldoasafar = List.generate(
      nama.length, (index) => Model_doa_safar('${nama[index].toString()}'));
  final List<Model_pdf> Modelpdf = List.generate(
      pdf.length, (index) => Model_pdf('${pdf[index].toString()}'));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar_page(context),
        body: Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(color: kPrimaryColor),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView.separated(
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: Text(
                        "${index + 1}",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: kTextColor),
                      ),
                      title: Text(
                        Modeldoasafar[index].nama,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: kTextColor),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => single_page(
                                list_doa_safar: Modeldoasafar,
                                index: index,
                                list_pdf: Modelpdf)));
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
                  itemCount: nama.length),
            )));
  }
}

List<String> nama = [
  'Doa Keluar Rumah',
  'Shalat Safar',
  'Zikir dan Doa Setelah Shalat Safar',
  'Doa Naik Kendaraan',
  'Sayyidul Istighfar',
  'Doa Ketika Akan Tiba di Tujuan',
  'Doa Memasuki Kota Madinah',
  'Doa Masuk Masjid Nabawi',
  'Doa Ketika di Raudlah',
  'Salam Ketika Melintasi Makam Rasulullah',
  'Salam kepada Sahabat Abu Bakar',
  'Salam kepada Sahabat Umar bin Khattab',
  "Salam Saat Ziarah Makam Baqi'",
  'Salam kepada Sahabat Utsman bin Affan',
  'Salam di Jabal Uhud',
  "Salam kepada Sahabat Hamzah bin Abdul Muttalib dan Mush'ab bin 'Umair",
  'Salam kepada Syuhada Uhud',
  'Ziarah Masjid Quba',
  'Pasar Kurma',
  'Doa Meninggalkan Masjid Nabawi',
  'Doa Meninggalkan Kota Madinah',
  'Pengertian Umrah',
  'Hukum Umrah',
  'Syarat Wajib Umrah',
  'Rukun Umrah',
  'Wajib Umrah',
  'Larangan Ihram',
  'Praktek Umrah',
  'Niat Umrah',
  'Umrah Badal',
  'Doa Sesudah Niat Ihram',
  'Bacaan Tabiyah',
  'Bacaan Shalawat',
  'Doa Sesudah Shalawat',
  'Doa Masuk Kota Mekkah',
  'Doa Ketika Melihat Masjidil Haram',
  'DOa Masuk Masjidil Haram',
  "Denah Ka'bah",
  "Doa Ketika Melihat Ka'bah",
  'Thawaf',
  'Thawaf Putaran Pertama',
  'Thawaf Putaran Kedua',
  'Thawaf Putaran Ketiga',
  'Thawaf Putaran Keempat',
  'Thawaf Putaran Kelima',
  'Thawaf Putaran Keenam',
  'Thawaf Putaran Ketujuh',
  'Shalat di Belakang Makam Ibrahim',
  'Doa Minum Air Zam-zam',
  'Doa Sai',
  'Doa Ketika Hendak Mendaki Bukti Shafa Sebelum Memulai Sai',
  'Doa Sai Perjalanan Pertama (Shafa ke Marwah)',
  'Doa Sai Perjalanan Kedua (Marwah ke Shafa)',
  'Doa Sai Perjalanan Ketiga (Shafa ke Marwah)',
  'Doa Sai Perjalanan Keempat (Marwah ke Shafa)',
  'Doa Sai Perjalanan Kelima (Shafa ke Marwah)',
  'Doa Sai Perjalanan Keenam (Marwah ke Shafa)',
  'Doa Sai Perjalanan Ketujuh (Shafa ke Marwah)',
  'Doa Selesai Sai',
  'Doa Menggunting Rambut',
  'Doa Selesai Umrah',
  'Doa Ketika Keluar Masjid',
  'Doa Multazam',
  'Doa Sesudah Shalat di Hijr Ismail',
  "Bacaan Thawaf Wada'",
  "Doa Sesudah Thawaf Wada'",
  'Bacaan Tawassul',
  'Bacaan Istighosah',
  'Doa Istighosah',
  'Surah Al-Waqiah',
  'Doa Kesembuhan Dibaca Ketika Minum Obat',
  'Doa Kesembuhan Untuk Diri Sendiri',
  'Doa Kesembuhan Untuk Orang Lain',
  'Doa Menghilangkan Rasa Sakit',
  'Bacaan Ketika Sakit',
  'Mendoakan Teman Agar Tetap Sabar',
  'Bacaan Menghilangkan Capek',
  'Doa Datang dari Bepergian',
  'Doa Mau Masuk Kota (Malang)',
  'Doa Perjalanan Menuju Rumah',
  'Doa Masuk Ruma Kediaman',
  'Adab Kepulangan Umrah',
  'Doa Untuk Keluarga Peziarah',
  'Shalat Jenazah'
];
List<String> pdf = [
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/1.pdf',
  'assets/pdf/2.pdf',
  'assets/pdf/1.pdf',
];
