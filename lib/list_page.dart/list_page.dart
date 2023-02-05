// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:ziarah_rasul/constants.dart';
// import 'package:ziarah_rasul/list_page.dart/list_doa_safar.dart';
// import 'package:ziarah_rasul/single_page/appbar_page.dart';

// class ListPage extends StatefulWidget {
//   const ListPage({super.key});

//   @override
//   State<ListPage> createState() => _ListPageState();
// }

// class _ListPageState extends State<ListPage> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar_page(context),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Container(
//               height: size.height,
//               width: size.width,
//               decoration: BoxDecoration(color: kPrimaryColor),
//               child: Container(
//                   // height: size.height,
//                   margin: EdgeInsets.only(top: 20),
//                   padding: EdgeInsets.all(kDefaultPadding),
//                   decoration: BoxDecoration(
//                     color: kBackgroundColor,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20)),
//                   ),
//                   child: list_doa_safar()),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
