import 'package:flutter/material.dart';
import 'package:ziarah_rasul/constants.dart';

class Fikih_umrah extends StatelessWidget {
  const Fikih_umrah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 242,
                width: 190,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: ExactAssetImage("assets/images/contoh.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Nama Doa Disisni',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: ExactAssetImage("assets/images/contoh.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text("EXAMPLE",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: ExactAssetImage("assets/images/contoh.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text("EXAMPLE",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: ExactAssetImage("assets/images/contoh.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text("EXAMPLE",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: ExactAssetImage("assets/images/contoh.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Padding(
                padding: EdgeInsets.all(4),
                child: Text("EXAMPLE",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              )
            ],
          ),
          SizedBox(width: 10),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 242,
                width: 190,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: ExactAssetImage("assets/ images/contoh.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Nama Doa Disisni',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
