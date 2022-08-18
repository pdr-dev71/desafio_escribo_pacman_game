import 'package:bonfire/bonfire.dart';
import 'package:desafio_escribo_pacman_game/main.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatefulWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      map: TiledWorldMap('map/map_packman.json',
          forceTileSize: const Size(tileSize, tileSize)),
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(
          keyboardDirectionalType: KeyboardDirectionalType.arrows,
        ),
        actions: [
          JoystickAction(
            actionId: 1,
            color: Colors.orange,
            margin: const EdgeInsets.all(40),
          ),
        ],
      ),
    );
  }
}
