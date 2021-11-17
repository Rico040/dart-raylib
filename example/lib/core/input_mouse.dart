import 'package:raylib/raylib.dart';

void main() {
  initLibrary(
    linux: './include/libraylib.so',
  );
  const screenWidth = 800;
  const screenHeight = 450;

  initWindow(
    screenWidth,
    screenHeight,
    'dart-raylib [core] example - mouse input',
  );

  var ballPosition = Vector2(-100, -100);
  var ballColor = Color.darkBlue;

  setTargetFPS(60);

  while (!windowShouldClose()) {
    ballPosition = getMousePosition();

    if (isMouseButtonPressed(MouseButton.LEFT)) {
      ballColor = Color.maroon;
    } else if (isMouseButtonPressed(MouseButton.MIDDLE)) {
      ballColor = Color.lime;
    } else if (isMouseButtonPressed(MouseButton.RIGHT)) {
      ballColor = Color.darkBlue;
    } else if (isMouseButtonPressed(MouseButton.SIDE)) {
      ballColor = Color.purple;
    } else if (isMouseButtonPressed(MouseButton.EXTRA)) {
      ballColor = Color.yellow;
    } else if (isMouseButtonPressed(MouseButton.FORWARD)) {
      ballColor = Color.orange;
    } else if (isMouseButtonPressed(MouseButton.BACK)) {
      ballColor = Color.beige;
    }

    beginDrawing();

    clearBackground(Color.rayWhite);

    drawCircleV(ballPosition, 40, ballColor);

    drawText(
      'move ball with mouse and click mouse button to change color',
      10,
      10,
      20,
      Color.darkGray,
    );

    endDrawing();
  }

  closeWindow();
}
