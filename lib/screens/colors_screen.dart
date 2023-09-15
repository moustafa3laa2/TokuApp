import 'package:flutter/material.dart';
import 'package:toku/models/items.dart';
import 'package:toku/widgets/items_category.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);
  final List<Items> items = const [
    Items(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Chichioya',
        enName: 'Black'),
    Items(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Musume',
        enName: 'Brown'),
    Items(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Chichioya',
        enName: 'Dusty Yellow'),
    Items(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Chichioya',
        enName: 'Gray'),
    Items(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Chichioya',
        enName: 'Green'),
    Items(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Chichioya',
        enName: 'Red'),
    Items(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Chichioya',
        enName: 'White'),
    Items(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Chichioya',
        enName: 'Yellow'),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemsCategory(
            items: items[index],
            color: const Color(0xff7D40A2),
          );
        },
      ),
    );
  }
}
