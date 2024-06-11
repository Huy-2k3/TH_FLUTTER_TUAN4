import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tuan4/data/model/productmodel.dart';
import 'package:tuan4/conf/const.dart';


  Widget itemListView(Product productModel) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin:  const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            urlimg + productModel.img!,
            height: 80,
            width: 80,
            errorBuilder: (context, error, stackTrace) => 
              const Icon(Icons.image),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
            productModel.name ?? '',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            NumberFormat('Price: ###,###.####').format(productModel.price),
            style: const TextStyle(
              fontSize: 15,
              color: Colors.red,
            ),
          ),
          Text(
            productModel.des!,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
            ],
          )
        ],
      ),
    );
  }
  
  
