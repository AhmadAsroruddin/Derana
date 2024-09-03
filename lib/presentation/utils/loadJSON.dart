import 'dart:convert';
import 'package:flutter/services.dart';

Future<List<dynamic>> loadJsonData(String filePath) async {
  String jsonString = await rootBundle.loadString(filePath);
  return json.decode(jsonString);
}
