import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';

import '../constants.dart';

class PdfPage extends StatefulWidget {
  PdfPage(this.doc, {Key? key}) : super(key: key);
  final Document doc;
  // int index;
  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    // PageController controller =
    //     PageController(initialPage: 0, viewportFraction: 0.6);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (() => Navigator.pop(context)),
          icon: Image.asset(
            'assets/images/back.png',
            color: Colors.white,
          ),
          padding: EdgeInsets.only(left: kDefaultPadding),
        ),
        title: Text(
          widget.doc.doc_title!,
          style: TextStyle(
              fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body:
          // PageView.builder(
          //   // controller: controller,
          //   itemBuilder: (context, index) {
          //     return Container(
          //       child: SfPdfViewer.asset(widget.doc.doc_url!),
          //     );
          //   },
          //   itemCount: Document.doc_list.length,
          // )
          Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Container(
            child: SfPdfViewer.asset(
              widget.doc.doc_url!,
            ),
          ),
        ),
      ),
//       bottomNavigationBar: Container(
//         height: 65,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(50),
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.black.withOpacity(.1),
//                   blurRadius: 30,
//                   offset: const Offset(0, 1))
//             ]),
//         margin: const EdgeInsets.only(bottom: 30, left: 40, right: 40),
//         child: Padding(
//           padding: const EdgeInsets.only(
//               left: kDefaultPadding, right: kDefaultPadding),
//           child: Row(
//             children: [
//               FloatingActionButton(
//                 heroTag: "f1",
//                 backgroundColor: Colors.white,
//                 mini: true,
//                 onPressed: () {
//                   setState(() {
//                     if (index != 0) {
//                       index--;
//                     }
//                   });
//                 },
//                 child: Image.asset(
//                   'assets/images/left.png',
//                   color: kPrimaryColor,
//                 ),

//                 // scale: 0.1,
//               ),
//               const Spacer(),
//               FloatingActionButton(
//                   heroTag: "f2",
//                   backgroundColor: Colors.white,
//                   mini: true,
//                   onPressed: () {
//                     // setState(() {
//                     //   if (widget.index != widget.list_doa_safar.length - 1) {
//                     //     widget.index++;
//                     //   }
//                     // });
//                   },
//                   child: Image.asset(
//                     'assets/images/right.png',
//                     color: kPrimaryColor,
//                   )),
//             ],
//           ),
//         ),
//       ),
    );
  }
}
