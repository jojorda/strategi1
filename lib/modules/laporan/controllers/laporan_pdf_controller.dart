import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class LaporanPdfController extends GetxController {
  RxString filePath = "".obs;
  RxInt totalPages = 0.obs;
  RxInt currentPage = 0.obs;
  RxBool isReady = false.obs;
  RxString errorMessage = "".obs;

  late PDFViewController pdfViewController;

  @override
  void onInit() {
    final argument = Get.arguments;
    if (argument != null && argument is String) {
      createFileOfPdfUrl(argument);
    } else {
      loadPdfFromAssets('assets/images/laporan.pdf');
    }

    super.onInit();
  }

  Future<void> loadPdfFromAssets(String assetPath) async {
    try {
      final ByteData data = await rootBundle.load(assetPath);
      final Uint8List bytes = data.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final file = File("${tempDir.path}/temp.pdf");

      await file.writeAsBytes(bytes, flush: true);
      filePath.value = file.path;
    } catch (e) {
      errorMessage.value = "Error loading PDF: $e";
    }
  }

  Future<File> createFileOfPdfUrl(String url) async {
    Completer<File> completer = Completer();
    try {
      final filename = url.substring(url.lastIndexOf("/") + 1);
      var request = await HttpClient().getUrl(Uri.parse(url));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$filename");

      await file.writeAsBytes(bytes, flush: true);
      filePath.value = file.path;
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }
    return completer.future;
  }

  void setTotalPages(int pages) {
    totalPages.value = pages;
  }

  void setCurrentPage(int page) {
    currentPage.value = page;
  }

  void setPdfViewController(PDFViewController controller) {
    pdfViewController = controller;
  }

  void jumpToPage(int page) {
    pdfViewController.setPage(page);
  }

  Future<void> savePdf() async {
    try {
      // Request storage permission
      if (await Permission.manageExternalStorage.request().isGranted) {
        final downloadDir = Directory('/storage/emulated/0/Download');
        if (!downloadDir.existsSync()) {
          downloadDir.createSync(recursive: true);
        }

        final fileName = filePath.value.split('/').last;
        final newFilePath = '${downloadDir.path}/$fileName';
        final newFile = await File(filePath.value).copy(newFilePath);

        if (newFile.existsSync()) {
          Get.snackbar('Success', 'PDF saved to Download folder');
        } else {
          Get.snackbar('Error', 'Failed to save PDF');
        }
      } else {
        Get.snackbar('Tidak ada akses',
            'Silahkan berikan akses penyimpanan untuk menyimpan PDF');
      }
    } catch (e) {
      errorMessage.value = "Error saving PDF: $e";
    }
  }
}
