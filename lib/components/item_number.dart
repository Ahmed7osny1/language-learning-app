import 'package:flutter/material.dart';
import 'package:languagelearningapp/model/number.dart';
import 'package:audioplayers/audioplayers.dart';

class ItemNumber extends StatelessWidget {
  const ItemNumber({super.key, required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(
                number.image
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: (){
              final player = AudioPlayer();
              player.play(
                  AssetSource(number.sound)
              );
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

}