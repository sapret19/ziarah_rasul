import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/list_page.dart/list_doa_safar.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';

class Pencarian extends StatefulWidget {
  const Pencarian({
    Key? key,
  }) : super(key: key);

  @override
  State<Pencarian> createState() => _PencarianState();
}

class _PencarianState extends State<Pencarian> {
  final controller = TextEditingController();

  list_doa_safar _searchedJuzName = list_doa_safar();
  
  
      
       List<String> _dataList =  List.generate(
      nama.length, (index) => Model_doa_safar('$index').toString());
      List<String> _filteredList = [];
 
  // void initState() {
  //   _filteredList = list_doa_safar. Modeldoasafar.toList();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(185, 212, 108, 1),
              kPrimaryColor,
              kPrimaryColor
            ]),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 20, 20, 20).withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      )
                    ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                        child: Image(
                          image: const AssetImage('assets/images/Logo-ZR.png'),
                          height: AppBar().preferredSize.height,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),


            ],
          )
        ],
      ),
    );
  }
}
