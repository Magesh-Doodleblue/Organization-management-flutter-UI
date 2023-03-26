// ignore_for_file: depend_on_referenced_packages, import_of_legacy_library_into_null_safe, library_private_types_in_public_api, avoid_print

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer_null_safe/flutter_full_pdf_viewer.dart';
import 'package:path/path.dart' as path;
import 'package:file_picker/file_picker.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({Key? key}) : super(key: key);

  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  File? _pdfFile;

  Future<void> _pickPDFAndPreview() async {
    try {
      FilePickerResult? result = await FilePicker.platform
          .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
      if (result != null) {
        File file = File(result.files.single.path!);
        setState(() {
          _pdfFile = file;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pdfFile == null
            ? const Text('No PDF selected.')
            : PDFViewerScaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(path.basename(_pdfFile!.path)),
                ),
                path: _pdfFile!.path,
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickPDFAndPreview,
        tooltip: 'Select PDF',
        backgroundColor: const Color.fromARGB(255, 255, 124, 124),
        child: const Icon(Icons.attach_file),
      ),
    );
  }
}
