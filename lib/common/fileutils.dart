import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileUtils {
  Future<String> get _appDocumentPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _appDocumentFile async {
    final path = await _appDocumentPath;
    return File('$path/weather_json.txt');
  }

  Future<String> readAppDocumentFile() async {
    try {
      final file = await _appDocumentFile;
      String txtStr = await file.readAsString();
      return txtStr;
    } catch (e) {
      return 'error';
    }
  }

  Future<File> writeTxt(String txtStr) async {
    final file = await _appDocumentFile;
    return file.writeAsString(txtStr);
  }
}
