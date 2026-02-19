import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Pdf1 extends StatefulWidget {
  const Pdf1({super.key});

  @override
  State<Pdf1> createState() => _Pdf1State();
}

class _Pdf1State extends State<Pdf1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SfPdfViewer.asset('assets/sample-local-pdf.pdf'),
    );
  }
}
