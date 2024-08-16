import 'dart:math';

import 'package:raylib/raylib.dart';

final _random = Random();
double _getRandomValue(double min, double max) {
  return min + _random.nextDouble() * max;
}

void main() {
  initLibrary(
    linux: './include/libraylib.so',
    windows: './include/raylib.dll',
  );
  const screenWidth = 800;
  const screenHeight = 450;

  initWindow(
    screenWidth,
    screenHeight,
    'dart-raylib [core] example - 3d camera first person',
  );

  // Define the camera to look into our 3d world (position, target, up vector)
  final camera = Camera(
    position: Vector3(4, 2, 4),
    target: Vector3(0, 1.8, 0),
    up: Vector3(0, 1, 0),
    fovy: 60,
  );

  var cameraMode = CameraMode.firstPerson;

  // Generates some random columns
  final heights = <double>[];
  final positions = <Vector3>[];
  final colors = <Color>[];

  /// Max amount of columns to generate.
  const maxColumns = 20;

  for (var i = 0; i < maxColumns; i++) {
    heights.add(_getRandomValue(1, 12));
    positions.add(
      Vector3(
        _getRandomValue(-15, 15),
        heights[i] / 2,
        _getRandomValue(-15, 15),
      ),
    );
    colors.add(
      Color(
        _getRandomValue(20, 255).toInt(),
        _getRandomValue(10, 55).toInt(),
        30,
        255,
      ),
    );
  }

  disableCursor();

  setTargetFPS(60);

  while (!windowShouldClose()) {
    // Switch camera mode
    if (isKeyPressed(KeyboardKey.one)) {
      cameraMode = CameraMode.free;
      camera.up = Vector3(0, 1, 0); // Reset roll
    }
    if (isKeyPressed(KeyboardKey.two)) {
      cameraMode = CameraMode.firstPerson;
      camera.up = Vector3(0, 1, 0); // Reset roll
    }
    if (isKeyPressed(KeyboardKey.three)) {
      cameraMode = CameraMode.thirdPerson;
      camera.up = Vector3(0, 1, 0); // Reset roll
    }
    if (isKeyPressed(KeyboardKey.four)) {
      cameraMode = CameraMode.orbital;
      camera.up = Vector3(0, 1, 0); // Reset roll
    }

    // Switch camera projection
    if (isKeyPressed(KeyboardKey.p)) {
      if (camera.projection == CameraProjection.perspective) {
        // Create isometric view
        cameraMode = CameraMode.thirdPerson;
        // Note: The target distance is related to the render distance
        // in the orthographic projection
        camera
          ..position = Vector3(0, 2, -100)
          ..target = Vector3(0, 2, 0)
          ..up = Vector3(0, 1, 0)
          ..projection = CameraProjection.orthographic
          ..fovy = 20;
        // TODO(Rico040): Bindings for rcamera.h
      } else if (camera.projection == CameraProjection.orthographic) {
        // Reset to default view
        cameraMode = CameraMode.thirdPerson;
        camera
          ..position = Vector3(0, 2, 10)
          ..target = Vector3(0, 2, 0)
          ..up = Vector3(0, 1, 0)
          ..projection = CameraProjection.perspective
          ..fovy = 60;
      }
    }

    updateCamera(camera, cameraMode);

    beginDrawing();

    clearBackground(Color.rayWhite);

    beginMode3D(camera);

    drawPlane(Vector3.zero(), Vector2(32, 32), Color.lightGray); // Draw ground
    drawCube(Vector3(-16, 2.5, 0), 1, 5, 32, Color.blue); // Draw a blue wall
    drawCube(Vector3(16, 2.5, 0), 1, 5, 32, Color.lime); // Draw a green wall
    drawCube(Vector3(0, 2.5, 16), 32, 5, 1, Color.gold); // Draw a yellow wall

    // Draw some cubes around
    for (var i = 0; i < maxColumns; i++) {
      drawCube(positions[i], 2, heights[i], 2, colors[i]);
      drawCubeWires(positions[i], 2, heights[i], 2, Color.maroon);
    }

    // Draw player cube
    if (cameraMode == CameraMode.thirdPerson) {
      drawCube(camera.target, 0.5, 0.5, 0.5, Color.purple);
      drawCubeWires(camera.target, 0.5, 0.5, 0.5, Color.darkPurple);
    }

    endMode3D();

    // Draw info boxes
    drawRectangle(5, 5, 330, 100, fade(Color.skyBlue, .5));
    drawRectangleLines(5, 5, 330, 100, Color.blue);

    drawText('Camera controls:', 15, 15, 10, Color.black);
    drawText(
      '- Move keys: W, A, S, D, Space, Left-Ctrl',
      15,
      30,
      10,
      Color.black,
    );
    drawText('- Look around: arrow keys or mouse', 15, 45, 10, Color.black);
    drawText('- Camera mode keys: 1, 2, 3, 4', 15, 60, 10, Color.black);
    drawText(
      '- Zoom keys: num-plus, num-minus or mouse scroll',
      15,
      75,
      10,
      Color.black,
    );
    drawText('- Camera projection key: P', 15, 90, 10, Color.black);

    drawRectangle(600, 5, 195, 100, fade(Color.skyBlue, .5));
    drawRectangleLines(600, 5, 195, 100, Color.blue);

    drawText('Camera status:', 610, 15, 10, Color.black);
    drawText(
      '- Mode ${(cameraMode == CameraMode.free) ? 'FREE' : (cameraMode == CameraMode.firstPerson) ? 'FIRES_PERSON' : (cameraMode == CameraMode.thirdPerson) ? 'THIRD_PERSON' : (cameraMode == CameraMode.orbital ? 'ORBITAL' : 'CUSTOM')}',
      610,
      30,
      10,
      Color.black,
    );
    drawText(
      '- Projection: ${(camera.projection == CameraProjection.perspective) ? 'Perspective' : (camera.projection == CameraProjection.orthographic) ? 'ORTHOGRAPHIC' : 'CUSTOM'}',
      610,
      45,
      10,
      Color.black,
    );
    drawText(
      '- Position (${camera.position.x}, ${camera.position.y}, ${camera.position.z})',
      610,
      60,
      10,
      Color.black,
    );
    drawText(
      '- Target (${camera.target.x}, ${camera.target.y}, ${camera.target.z})',
      610,
      75,
      10,
      Color.black,
    );
    drawText(
      '- Up (${camera.up.x}, ${camera.up.y}, ${camera.up.z})',
      610,
      90,
      10,
      Color.black,
    );

    endDrawing();
  }

  closeWindow();
}
