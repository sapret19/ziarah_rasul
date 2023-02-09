import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ziarah_rasul/Doa-doa/Fikih_umrah.dart';
import 'package:ziarah_rasul/Home_detail/Bagian_depan.dart';
import 'package:ziarah_rasul/constants.dart';
import 'package:ziarah_rasul/home_screen.dart';
import 'package:ziarah_rasul/home_view.dart';

class HomeWithnav extends StatefulWidget {
  const HomeWithnav({super.key});

  @override
  State<HomeWithnav> createState() => _HomeWithnavState();
}

class _HomeWithnavState extends State<HomeWithnav> {
  int _pageindex = 0;
  final List<Widget> _tablist = [
    HomeView(),
    // Body(),
    Fikih_umrah(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _tablist.elementAt(_pageindex),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment(0.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                    selectedItemColor: kPrimaryColor,
                    unselectedItemColor: Colors.grey,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    backgroundColor: Colors.white,
                    currentIndex: _pageindex,
                    onTap: (int index) {
                      setState(() {
                        _pageindex = index;
                      });
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.web_stories), label: "Sekolah"),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.school),
                        label: "Home",
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
