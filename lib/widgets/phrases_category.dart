import 'package:flutter/material.dart';
import 'package:toku/models/phrases_model.dart';

class PhrasesCategory extends StatelessWidget {
  const PhrasesCategory({Key? key, required this.phrases,required this.color}) : super(key: key);
  final PhrasesModel phrases;
  final Color color;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.133,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrases.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  phrases.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
               phrases.playSound();
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
