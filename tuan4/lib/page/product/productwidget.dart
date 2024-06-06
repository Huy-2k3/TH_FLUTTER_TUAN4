import 'package:flutter/material.dart';
import 'package:tuan4/conf/const.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: lstProduct.length,
          itemBuilder: (context, index) {
            return itemListView(lstPro[index]);
          },),
      ),
    );
  }
  
}

