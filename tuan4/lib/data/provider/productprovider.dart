import 'dart:convert';
import '../model/productmodel.dart';
import 'package:flutter/services.dart';

class ReadData {
  Future<List<Product>> loadData () async {
    var data = await rootBundle.loadString(
      "assets/files/categorylist.json");
      var dataJson = jsonDecode(data);
      return (dataJson['data'] as List).map((e) => Product.fromJson(e)).toList();
  }
}