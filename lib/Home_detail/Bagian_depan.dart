import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';

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
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30))),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding),
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
                padding:
                    EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding),
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
                padding:
                    EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
          // Container(
          //   color: Colors.white,
          //   height: 20,
          //   width: 20,
          //   child: Column(
          //     children: [
          //       Image.asset('')
          //     ],
          //   ),
          // )
        ],
        
      ),
    );
  }
}
