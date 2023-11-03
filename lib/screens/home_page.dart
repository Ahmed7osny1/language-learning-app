import 'package:flutter/material.dart';
import '../components/category_item.dart';

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
          Category('Numbers', Colors.orange),
          Category('Family Members', Colors.green),
          Category('Colors', Colors.deepPurple),
          Category('Phrases', Colors.blue),
        ],
      ),
    );
  }
}