import 'package:audioplayers/audioplayers.dart';

class PhrasesModel {
  final String jpName;
  final String enName;
  final String sound;
  const PhrasesModel(
      {required this.jpName, required this.enName, required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(
      AssetSource(sound),
    );
  }
}
