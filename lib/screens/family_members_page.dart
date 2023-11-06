import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/item_number.dart';
import '../model/itemmodel.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father',
        sound: 'sounds/family_members/father.wav'
    ),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'
    ),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'Grand Father',
        sound: 'sounds/family_members/grand father.wav'
    ),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grand Mother',
        sound: 'sounds/family_members/grand mother.wav'
    ),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'
    ),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'Older Brother',
        sound: 'sounds/family_members/older bother.wav'
    ),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
          jpName: 'Ane',
        enName: 'Older Sister',
        sound: 'assets/sounds/family_members/older sister.wav'
    ),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'
    ),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger Brother',
        sound: 'sounds/family_members/younger brohter.wav'
    ),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger Sister',
        sound: 'sounds/family_members/younger sister.wav'
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
        itemCount: numbers.length,
        itemBuilder: (context, num){
          return ItemNumber(
            number: numbers[num],
            color: Colors.green
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