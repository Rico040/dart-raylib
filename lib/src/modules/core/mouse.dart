import 'package:raylib/raylib.dart';
import 'package:raylib/src/raylib_instance.dart';

/// Check if a mouse button has been pressed once.
bool isMouseButtonPressed(int button) {
  return library.IsMouseButtonPressed(button);
}

/// Check if a mouse button is being pressed.
bool isMouseButtonDown(int button) {
  return library.IsMouseButtonDown(button);
}

/// Check if a mouse button has been released once.
bool isMouseButtonReleased(int button) {
  return library.IsMouseButtonReleased(button);
}

/// Check if a mouse button is NOT being pressed.
bool isMouseButtonUp(int button) {
  return library.IsMouseButtonUp(button);
}

/// Get mouse position X.
int getMouseX() {
  return library.GetMouseX();
}

/// Get mouse position Y.
int getMouseY() {
  return library.GetMouseY();
}

/// Get mouse position XY.
Vector2 getMousePosition() {
  return Vector2.fromRef(library.GetMousePosition());
}

/// Get mouse delta between frames.
Vector2 getMouseDelta() {
  return Vector2.fromRef(library.GetMouseDelta());
}

/// Set mouse position XY.
void setMousePosition(int x, int y) {
  return library.SetMousePosition(x, y);
}

/// Set mouse offset.
void setMouseOffset(int offsetX, int offsetY) {
  return library.SetMouseOffset(offsetX, offsetY);
}

/// Set mouse scaling.
void setMouseScale(double scaleX, double scaleY) {
  return library.SetMouseScale(scaleX, scaleY);
}

/// Get mouse wheel movement Y.
double getMouseWheelMove() {
  return library.GetMouseWheelMove();
}

/// Set mouse cursor.
void setMouseCursor(int cursor) {
  return library.SetMouseCursor(cursor);
}
