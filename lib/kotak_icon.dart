import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';

import 'list_page.dart/list_doa_safar.dart';


class Kotak_icon extends StatelessWidget {
  
   Kotak_icon({Key? key, this.image, this.title, required this.index})
      : super(key: key);

  final String? image;
  final String? title;
  final int index;

  @override

    ItemScrollController _scrollController = ItemScrollController();
  final List<Model_doa_safar> Modeldoasafar = List.generate(
      nama.length, (index) => Model_doa_safar('${nama[index].toString()}'));
  final List<Model_pdf> Modelpdf = List.generate(
      pdf.length, (index) => Model_pdf('${pdf[index].toString()}'));

  
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap:() {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => list_doa_safar(index: "$index",)));
          },
          child: Container(
            // transform: Matrix4.translationValues(0, -70.0, 1),
            height: 100,
            width: 157,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 20, 20, 20).withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  )
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: kDefaultPadding),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        child: Image(image: AssetImage('$image')),
                      ),
                      Text(
                        '$title',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 25, 0, 12),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xffabcb4e),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xffabcb4e),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        
      ],
    );
  }
}
