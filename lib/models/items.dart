import 'package:audioplayers/audioplayers.dart';

class Items {
  final String sound;
  final String image;
  final String jpName;
  final String enName;
  const Items(
      {required this.sound,
      required this.image,
      required this.jpName,
      required this.enName});

  plauSound() {
    final player = AudioPlayer();
    player.play(
      AssetSource(sound),
    );
  }
}
