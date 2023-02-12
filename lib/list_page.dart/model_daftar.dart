class Model_doa_safar {
  final String nama;

  Model_doa_safar(
    this.nama,
  );
}
class Model_doa_safar2 {
  final String nama2;

  Model_doa_safar2(
    this.nama2,
  );
}

class Document {
  String? doc_title;
  String? doc_url;

  Document(this.doc_title, this.doc_url);

  static List<Document> doc_list = [
    Document('Doa Naik Kendaraan', 'assets/pdf/1.pdf'),
    Document('Dod', 'assets/pdf/2.pdf'),
    Document('Doadsaf', 'assets/pdf/2.pdf'),
    Document('Dodsa', 'assets/pdf/2.pdf'),
  ];

  // final map_doc = doc_list.asMap();
}

class Model_pdf {
  String? pdf;

  Model_pdf(this.pdf);
}
