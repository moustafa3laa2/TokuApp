import 'package:flutter/material.dart';
import 'package:toku/models/phrases_model.dart';
import 'package:toku/widgets/phrases_category.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  final List<PhrasesModel> phrasesList = const [
    PhrasesModel(
      jpName: 'Kodoku suru koto o wasurenaide kudasai',
      enName: 'dont forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PhrasesModel(
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'i love programing',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    PhrasesModel(
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    PhrasesModel(
      jpName: 'Doko ni iku no',
      enName: 'where are you going ?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    PhrasesModel(
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name ?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    PhrasesModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    PhrasesModel(
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling ?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PhrasesModel(
      jpName: 'Kimasu ka',
      enName: 'are you coming ?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    PhrasesModel(
      jpName: 'Hai, ikimasu',
      enName: 'yes i am coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesCategory(
            phrases: phrasesList[index],
            color: const Color(0xff47A5CB),
          );
        },
      ),
    );
  }
}
