import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  HomeContainer(
      {Key? key,
      required this.text,
      required this.ContainerColor,
      required this.onTapp})
      : super(key: key);
  final String text;
  final Color ContainerColor;
  final Function() onTapp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapp,
      child: Container(
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: ContainerColor,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
