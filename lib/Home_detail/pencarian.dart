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
  TextEditingController _controllerSearch = TextEditingController();
  Widget? searchTextField = Text("Cari Bacaan");
  bool search = false;
  Color _bgColor = Colors.black;
  final List<Model_doa_safar> Modeldoasafar = List.generate(
      nama.length, (index) => Model_doa_safar('${nama[index].toString()}'));
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 48,
                width: ScreenSize.width * 0.89,
                decoration: BoxDecoration(
                    color: Color.fromARGB(106, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                    onChanged: (value) {
                      setState(() {
                        Model_doa_safar('${nama.toString()}');
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Cari Bacaan...",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(226, 255, 255, 255)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.all(kDefaultPadding),
                        suffixIcon: Icon(Icons.search,
                            color: Color.fromARGB(226, 255, 255, 255)))),
              ),
            ],
          )
        ],
      ),
    );
  }
}

