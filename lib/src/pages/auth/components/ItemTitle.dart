

import 'package:flutter/material.dart';
import 'package:quintana/src/auth/models/item_models.dart';

class ItemTitle extends StatelessWidget {

  final ItemModel item;

  const ItemTitle({super.key, required this.item});



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          //Imagem
          Image.asset(item.imgUrl),
          //Nome
          Text(item.itemName),
        ],
      ),
    );
  }
}
