import 'package:flutter/material.dart';

void main() {
  runApp(const LanguageLearningApp());
}

class LanguageLearningApp extends StatelessWidget{
  const LanguageLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            Container(
              padding: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: const Color(0xffEF9235),
              child: const Text(
                'Numbers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: Colors.green,
              child: const Text(
                'Family Members',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: Colors.deepPurple,
              child: const Text(
                'Colors',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24),
              alignment: Alignment.centerLeft,
              height: 65,
              width: double.infinity,
              color: Colors.blue,
              child: const Text(
                'Phrases',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}