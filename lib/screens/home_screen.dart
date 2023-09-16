import 'package:flutter/material.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';
import 'package:toku/widgets/home_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFDE4),
      appBar: AppBar(
        title: const Text("Toku"),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(
        children: [
          HomeContainer(
            onTapp: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const NumbersScreen(),
              ),
            ),
            text: 'Numbers',
            containerColor: const Color(0xffF99531),
          ),
          HomeContainer(
            onTapp: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const FamilyScreen(),
              ),
            ),
            text: 'Family Members',
            containerColor: const Color(0xff528032),
          ),
          HomeContainer(
            onTapp: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const ColorsScreen(),
              ),
            ),
            text: 'Colors',
            containerColor: const Color(0xff7D40A2),
          ),
          HomeContainer(
            onTapp: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const PhrasesScreen(),
              ),
            ),
            text: 'Phrases',
            containerColor: const Color(0xff47A5CB),
          ),
        ],
      ),
    );
  }
}
