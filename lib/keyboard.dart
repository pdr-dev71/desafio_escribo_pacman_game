import 'package:bonfire/bonfire.dart';
import 'package:desafio_escribo_pacman_game/pacman.dart';
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
      map: TiledWorldMap(
        'map/map_packman.json',
        forceTileSize: const Size(15, 15),
      ),
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(
          size: 120,
          //isFixed: false,
        ),
      ),
      player: PacMan(Vector2(30, 30)),
    );
  }
}
