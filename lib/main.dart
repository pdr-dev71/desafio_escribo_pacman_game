import 'package:bonfire/bonfire.dart';
import 'package:desafio_escribo_pacman_game/keyboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }

  runApp(const MaterialApp(
    home: Keyboard(),
  ));
}
