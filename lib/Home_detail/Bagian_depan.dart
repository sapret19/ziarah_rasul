import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/Doa-doa/Doa_safar.dart';
import 'package:ziarah_rasul/Doa-doa/Doa_ZR.dart';
import 'package:ziarah_rasul/Doa-doa/Fikih_umrah.dart';

class Bagian_depan extends StatelessWidget {
  const Bagian_depan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1605,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(239, 239, 239, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  "Doa Safar",
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  "Lihat Semua",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: kPrimaryColor),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          // widget geser doa safar
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 14),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                
                Doa_safar(image: "assets/images/Logo-ZR.png"),
                Doa_safar(image: "assets/images/Logo-ZR.png"),
                Doa_safar(image: "assets/images/Logo-ZR.png"),
                Doa_safar(image: "assets/images/Logo-ZR.png"),
                Doa_safar(image: "assets/images/Logo-ZR.png"),
                Doa_safar(image: "assets/images/Logo-ZR.png"),
                Doa_safar(image: "assets/images/Logo-ZR.png"),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          //Doa Ziarah Rasul
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  "Ziarah Rasul",
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  "Lihat Semua",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: kPrimaryColor),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 14),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Doa_ZR(
                  image: "Images/contoh.jpg",
                  title: "Jenenge \nDungone",
                ),
                Doa_ZR(
                  image: "Images/contoh.jpg",
                  title: "Jenenge \nDungone",
                ),
                Doa_ZR(
                  image: "Images/contoh.jpg",
                  title: "Jenenge \nDungone",
                ),
                Doa_ZR(
                  image: "Images/contoh.jpg",
                  title: "Jenenge \nDungone",
                ),
                Doa_ZR(
                  image: "Images/contoh.jpg",
                  title: "Jenenge \nDungone",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Fikih Umroh
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  "Fikih Umrah",
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ElevatedButton(
                  
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: StadiumBorder()
                  ),
                  
                  child: Text(
                    
                    "Lihat Semua",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ),
              ),
             
            ],
          ),
          
           Fikih_umrah()
        ],
      ),
    );
  }
}

