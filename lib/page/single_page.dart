import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ziarah_rasul/constants.dart';

class single_page extends StatefulWidget {
  const single_page({super.key});

  @override
  State<single_page> createState() => _single_pageState();
}

class _single_pageState extends State<single_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset("assets/icon/back.svg")),
      ),
    );
  }
}
