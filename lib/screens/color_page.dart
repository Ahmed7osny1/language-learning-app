import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/item_number.dart';
import '../model/itemmodel.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> colorList = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'
    ),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'
    ),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiierō',
        enName: 'Dusty Yellow',
        sound: 'sounds/colors/dusty yellow.wav'
    ),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'
    ),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'
    ),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'
    ),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White',
        sound: 'sounds/colors/white.wav'
    ),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, num){
          return ItemNumber(
              item: colorList[num],
              color: Colors.deepPurple
          );
        },
      ),
      // body: ListView (
      //   children: getList(numbers),
      // ),
    );
  }

// List<Widget> getList(List<Number> numbers){
//   List<Widget> itemsList = [];
//   for(int i = 0; i < numbers.length ; i++){
//     itemsList.add(ItemNumber(number: numbers[i]));
//   }
//   return itemsList;
// }

}