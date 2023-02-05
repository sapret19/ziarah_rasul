import 'package:flutter/material.dart';
import 'package:ziarah_rasul/Home_detail/pencarian.dart';
import 'package:ziarah_rasul/Home_detail/pengumuman.dart';
import 'package:ziarah_rasul/constants.dart';

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
                  Container(
                    transform: Matrix4.translationValues(30.0, -70.0, 1),
                    height: 100,
                    width: 157,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 20, 20, 20)
                                .withOpacity(0.3),
                            spreadRadius: 3,
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
                                child: Image(
                                    image: AssetImage('icons/logo_safar.png')),
                              ),
                              Text('DOADOA')
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(45, 25, 0, 12),
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
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    transform: Matrix4.translationValues(40.0, -70.0, 1),
                    height: 100,
                    width: 157,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 20, 20, 20)
                                .withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              // Baris Baru
              Row(
                children: [
                  Container(
                    transform: Matrix4.translationValues(30.0, -70.0, 1),
                    height: 100,
                    width: 157,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 20, 20, 20)
                                .withOpacity(0.3),
                            spreadRadius: 3,
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
                                child: Image(
                                    image: AssetImage('icons/logo_safar.png')),
                              ),
                              Text('DOADOA')
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(45, 25, 0, 12),
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
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    transform: Matrix4.translationValues(40.0, -70.0, 1),
                    height: 100,
                    width: 157,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 20, 20, 20)
                                .withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              // Baris Baru
              Row(
                children: [
                  Container(
                    transform: Matrix4.translationValues(30.0, -70.0, 1),
                    height: 100,
                    width: 157,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 20, 20, 20)
                                .withOpacity(0.3),
                            spreadRadius: 3,
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
                                child: Image(
                                    image: AssetImage('icons/logo_safar.png')),
                              ),
                              Text('DOADOA')
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(45, 25, 0, 12),
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
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    transform: Matrix4.translationValues(40.0, -70.0, 1),
                    height: 100,
                    width: 157,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 20, 20, 20)
                                .withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          )
                        ]),
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
