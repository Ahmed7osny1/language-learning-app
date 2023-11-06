import 'package:flutter/material.dart';
import 'package:languagelearningapp/screens/numbers_page.dart';
import 'package:languagelearningapp/screens/phrases_page.dart';
import '../components/category_item.dart';
import 'color_page.dart';
import 'family_members_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const NumbersPage();
                    })
                );
              },
              text: 'Numbers',
              color: Colors.orange
          ),
          Category(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return const FamilyMembersPage();
                    })
                );
              },
              text: 'Family Members',
              color: Colors.green
          ),
          Category(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return const ColorsPage();
                  })
              );
            },
              text: 'Colors',
              color: Colors.deepPurple
          ),
          Category(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return const PhrasesPage();
                })
              );
            },
              text: 'Phrases',
              color: Colors.blue
          ),
        ],
      ),
    );
  }
}