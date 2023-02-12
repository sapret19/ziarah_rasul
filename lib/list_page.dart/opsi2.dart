import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/home_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';
import 'package:ziarah_rasul/single_page/appbar_page.dart';
import 'package:ziarah_rasul/single_page/single_page.dart';

class opsi2 extends StatelessWidget {
  // final index;
  opsi2({
    super.key,
    // this.index,
  });
  ItemScrollController itemScrollController = ItemScrollController();

  // AutoScrollController? controller;

  final List<Model_doa_safar> Modeldoasafar = List.generate(
      nama.length, (index) => Model_doa_safar('${nama[index].toString()}'));
  final List<Model_pdf> Modelpdf = List.generate(
      pdf.length, (index) => Model_pdf('${pdf[index].toString()}'));

  @override
  Widget build(BuildContext context) {
    // controller = scroll();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar_page(context),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Column(
          children: [
            Container(
                height: 65,
                decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 30,
                          offset: const Offset(0, 1))
                    ]),
                margin: const EdgeInsets.only(
                    top: 0, bottom: 10, left: 10, right: 10),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding, right: kDefaultPadding),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      daftar(
                          itemScrollController: itemScrollController,
                          namadaftar: 'Doa Safar',
                          index: 0),
                      daftar(
                          itemScrollController: itemScrollController,
                          namadaftar: 'Ziarah Rasul',
                          index: 6),
                      daftar(
                          itemScrollController: itemScrollController,
                          namadaftar: 'Fikih Umrah',
                          index: 21),
                      daftar(
                          itemScrollController: itemScrollController,
                          namadaftar: 'Doa Umrah',
                          index: 28),
                      daftar(
                          itemScrollController: itemScrollController,
                          namadaftar: 'Tempat Mustajabah',
                          index: 63),
                      daftar(
                          itemScrollController: itemScrollController,
                          namadaftar: 'Lain-Lain',
                          index: 67)
                    ]),
                  ),
                )),
            Expanded(
              child: Container(
                // margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(kDefaultPadding),
                decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ScrollablePositionedList.separated(
                    itemScrollController: itemScrollController,
                    // initialScrollIndex: 1,

                    itemBuilder: ((context, index) {
                      // controller?.scrollToIndex(45, preferPosition: AutoScrollPosition.begin);
                      return ListTile(
                        leading: Text(
                          "${index + 1}",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: kPrimaryColor),
                        ),
                        title: Text(
                          Modeldoasafar[index].nama,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: kPrimaryColor),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
// Future scroll() async {
//   await itemScrollController.scrollTo(
//                             index: 45, duration: Duration(seconds: 1));
// }
  // scroll() {
  //   controller?.scrollToIndex(int.parse(Modeldoasafar[index].nama),
  //       preferPosition: AutoScrollPosition.begin,
  //       duration: Duration(seconds: 1));
  // }
}

class daftar extends StatelessWidget {
  final String namadaftar;
  final int index;

  const daftar(
      {super.key,
      required this.itemScrollController,
      required this.namadaftar,
      required this.index});

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            '$namadaftar',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: kPrimaryColor),
          ),
        ),
      ),
      onTap: () {
        itemScrollController.scrollTo(
            index: index, duration: Duration(milliseconds: 500));
      },
    );
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
  "Salam kepada Sahabat Hamzah dan Mush'ab",
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
  'Doa Masuk Masjidil Haram',
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
  'Sai',
  'Doa Hendak Mendaki Bukti Shafa Sebelum Memulai Sai',
  'Doa di Atas Bukit Shafa Ketika Menghadap Kiblat',
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
  'assets/pdf/3.pdf',
  'assets/pdf/4.pdf',
  'assets/pdf/5.pdf',
  'assets/pdf/6.pdf',
  'assets/pdf/7.pdf',
  'assets/pdf/8.pdf',
  'assets/pdf/9.pdf',
  'assets/pdf/10.pdf',
  'assets/pdf/11.pdf',
  'assets/pdf/12.pdf',
  'assets/pdf/13.pdf',
  'assets/pdf/14.pdf',
  'assets/pdf/15.pdf',
  'assets/pdf/16.pdf',
  'assets/pdf/17.pdf',
  'assets/pdf/18.pdf',
  'assets/pdf/19.pdf',
  'assets/pdf/20.pdf',
  'assets/pdf/21.pdf',
  'assets/pdf/22.pdf',
  'assets/pdf/23.pdf',
  'assets/pdf/24.pdf',
  'assets/pdf/25.pdf',
  'assets/pdf/26.pdf',
  'assets/pdf/27.pdf',
  'assets/pdf/28.pdf',
  'assets/pdf/29.pdf',
  'assets/pdf/30.pdf',
  'assets/pdf/31.pdf',
  'assets/pdf/32.pdf',
  'assets/pdf/33.pdf',
  'assets/pdf/34.pdf',
  'assets/pdf/35.pdf',
  'assets/pdf/36.pdf',
  'assets/pdf/37.pdf',
  'assets/pdf/38.pdf',
  'assets/pdf/39.pdf',
  'assets/pdf/40.pdf',
  'assets/pdf/41.pdf',
  'assets/pdf/42.pdf',
  'assets/pdf/43.pdf',
  'assets/pdf/44.pdf',
  'assets/pdf/45.pdf',
  'assets/pdf/46.pdf',
  'assets/pdf/47.pdf',
  'assets/pdf/48.pdf',
  'assets/pdf/49.pdf',
  'assets/pdf/50.pdf',
  'assets/pdf/51.pdf',
  'assets/pdf/52.pdf',
  'assets/pdf/53.pdf',
  'assets/pdf/54.pdf',
  'assets/pdf/55.pdf',
  'assets/pdf/56.pdf',
  'assets/pdf/57.pdf',
  'assets/pdf/58.pdf',
  'assets/pdf/59.pdf',
  'assets/pdf/60.pdf',
  'assets/pdf/61.pdf',
  'assets/pdf/62.pdf',
  'assets/pdf/63.pdf',
  'assets/pdf/64.pdf',
  'assets/pdf/65.pdf',
  'assets/pdf/66.pdf',
  'assets/pdf/67.pdf',
  'assets/pdf/68.pdf',
  'assets/pdf/69.pdf',
  'assets/pdf/70.pdf',
  'assets/pdf/71.pdf',
  'assets/pdf/72.pdf',
  'assets/pdf/73.pdf',
  'assets/pdf/74.pdf',
  'assets/pdf/75.pdf',
  'assets/pdf/76.pdf',
  'assets/pdf/77.pdf',
  'assets/pdf/78.pdf',
  'assets/pdf/79.pdf',
  'assets/pdf/80.pdf',
  'assets/pdf/81.pdf',
  'assets/pdf/82.pdf',
  'assets/pdf/83.pdf',
  'assets/pdf/84.pdf',
  'assets/pdf/85.pdf',
];
