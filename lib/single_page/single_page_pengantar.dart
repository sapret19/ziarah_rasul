import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';

import '../list_page.dart/list_doa_safar.dart';

// ignore: must_be_immutable, camel_case_types
class single_page_pengantar extends StatefulWidget {
  single_page_pengantar({
    super.key,
  });

  @override
  State<single_page_pengantar> createState() => _single_page_pengantarState();
}

class _single_page_pengantarState extends State<single_page_pengantar> {
  final List<Model_doa_safar> Modeldoasafar = List.generate(
      nama.length, (index) => Model_doa_safar('${nama[index].toString()}'));

  // int index = List.of(elements);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (() => Navigator.pop(context)),
          icon: Image.asset(
            'assets/images/back.png',
            color: Colors.white,
          ),
          padding: EdgeInsets.only(left: kDefaultPadding),
        ),
        title: Text(
          'Kata Pengantar',
          textAlign: TextAlign.start,
          maxLines: 4,
          style: TextStyle(
              fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 18),
        ),
        centerTitle: true,
      ),
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
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Container(
            child: SfPdfViewer.asset(
              'assets/pdf/pengantar.pdf',
              initialZoomLevel: 0,
              enableDoubleTapZooming: true,
              pageSpacing: 0,
            ),
          ),
        ),
      ),
    );
  }
}
