import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuan4/data/model/categorymodel.dart';
import 'package:tuan4/data/provider/categoryprovider.dart';
import 'categorybody.dart';
import 'package:tuan4/conf/const.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List<Category> lstCate = [];
  Future<String> loadCateList() async {
    lstCate = await ReadData().loadData();
    return '';
  }
  @override
  void initState() {
    super.initState();
    loadCateList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
    future: loadCateList(), 
    builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
      return Center(
        child: Column(
          children: [
            const Text(
              "Category list",
              style: titleStyle,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: lstCate.length,
                itemBuilder: (context, index) {
                  return itemCateView(lstCate[index]);
                }
              ) 
            )
          ],
        ),
      );
    });
  }
}