import 'package:bonfire/bonfire.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan(Vector2 position)
      : super(
          position: position, //required
          size: Vector2.all(32), //required
          life: 100,
          speed: 100,
          initDirection: Direction.right,
          //required
        ) {
    setupCollision(CollisionConfig(
      collisions: [
        CollisionArea.rectangle(size: Vector2.all(32)),
      ],
    ));
  }
}
