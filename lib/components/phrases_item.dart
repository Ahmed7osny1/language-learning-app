import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/item_info.dart';
import '../model/itemmodel.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.color,
    required this.itemModel});

  final ItemModel itemModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(itemModel: itemModel,),
    );
  }
}
