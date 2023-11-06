import 'package:flutter/material.dart';
import 'package:languagelearningapp/components/phrases_item.dart';
import '../model/itemmodel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phasesList = const [
    ItemModel(
        jpName: 'Kimasu ka',
        enName: 'Are You Coming',
        sound: 'sounds/phrases/are_you_coming.wav'
    ),
    ItemModel(
        jpName: 'Wasurezu ni kōdoku shite kudasai',
        enName: 'Don\'t Forget To Subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'
    ),
    ItemModel(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'How Are You Feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'
    ),
    ItemModel(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I Love Anime',
        sound: 'sounds/phrases/i_love_anime.wav'
    ),
    ItemModel(
        jpName: 'Puroguramingu ga daisuki',
        enName: 'I Love Programming',
        sound: 'sounds/phrases/i_love_programming.wav'
    ),
    ItemModel(
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'Programming is Easy',
        sound: 'sounds/phrases/programming_is_easy.wav'
    ),
    ItemModel(
        jpName: 'Anata no namae wa nandesuka',
        enName: 'What is your Name',
        sound: 'sounds/phrases/what_is_your_name.wav'
    ),
    ItemModel(
        jpName: 'Doko ni iku no',
        enName: 'Where are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'
    ),
    ItemModel(
        jpName: 'Hai, ikimasu',
        enName: 'Yes, I am Coming',
        sound: 'sounds/phrases/yes_im_coming.wav'
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
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phasesList.length,
        itemBuilder: (context, num){
          return PhrasesItem(
              itemModel: phasesList[num],
              color: Colors.blue
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