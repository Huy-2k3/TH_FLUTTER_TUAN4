import 'package:flutter/material.dart';
import 'package:tuan4/conf/const.dart';
import 'package:tuan4/data/model/productmodel.dart';
import 'package:tuan4/data/provider/productprovider.dart';
import 'package:tuan4/page/product/productbody.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  List<Product> lstPro = [];
  Future<String> loadProList() async {
    lstPro = await ReadData().loadData();
    return '';
  }
  @override
  void initState() {
    super.initState();
    loadProList();
  }

  @override
  Widget build (BuildContext context) {
    return FutureBuilder(
    future: loadProList(), 
    builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
      return Center(
        child: Column(
          children: [
            const Text(
              "Product list",
              style: titleStyle,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: lstPro.length,
                itemBuilder: (context, index) {
                  return itemListView(lstPro[index]);
                }
              ) 
            )
          ],
        ),
      );
    });
  }
}

