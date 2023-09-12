import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:toku/widgets/numbers_category.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'one',
    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'two',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'three',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Yon',
      enName: 'four',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'five',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'six',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Nana',
      enName: 'seven',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hanci',
      enName: 'eight',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyū',
      enName: 'nine',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Jū',
      enName: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return NumbersCategory(number: numbers[index]);
        },
      ),
    );
  }
}
