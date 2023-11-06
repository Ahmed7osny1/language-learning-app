import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/item_info.dart';
import 'package:languagelearningapp/model/itemmodel.dart';

class ItemNumber extends StatelessWidget {
  const ItemNumber({super.key, required this.item,
    required this.color});

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(
                item.image!
            ),
          ),
          Expanded(
              child: ItemInfo(itemModel: item,),
          ),
        ],
      ),
    );
  }

}