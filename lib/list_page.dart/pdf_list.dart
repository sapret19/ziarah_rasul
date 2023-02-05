import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ziarah_rasul/list_page.dart/model_daftar.dart';
import 'package:ziarah_rasul/single_page/appbar_page.dart';
import 'package:ziarah_rasul/single_page/pdf_page.dart';

class PdfList extends StatefulWidget {
  PdfList({super.key});

  @override
  State<PdfList> createState() => _PdfListState();
}

class _PdfListState extends State<PdfList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_page(context),
      body: SingleChildScrollView(
        child:
            //     ListView.builder(
            //   itemBuilder: ((context, index) {
            //     return Column(
            //       children: Document.doc_list
            //           .map((doc) => ListTile(
            //                 title: Text(doc.doc_title!),
            //                 onTap: () {
            //                   Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) => PdfPage(doc, index)));
            //                 },
            //               ))
            //           .toList(),
            //     );
            //   }),
            //   itemCount: 1,
            // ),
            Column(
          children: Document.doc_list
              .map((doc){
                  var index = Document.doc_list.indexOf(doc);
                  return
                  ListTile(
                    title: Text(doc.doc_title!),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PdfPage(doc)));
                    },
                  );})
              .toList(),
        ),
      ),
    );
  }
}

// extension IndexedIterable<E> on Iterable<E> {
//   Iterable<T> indexedMap<T>(T Function(E doc, int index) f) {
//     var index = 0;
//     return map((e) => f(e, index++));
//   }
// }
