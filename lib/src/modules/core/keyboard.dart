import 'package:raylib/src/raylib_instance.dart';

/// Check if a key has been pressed once.
bool isKeyPressed(int key) {
  return library.IsKeyPressed(key);
}

/// Check if a key is being pressed.
bool isKeyDown(int key) {
  return library.IsKeyDown(key);
}

/// Check if a key has been released once.
bool isKeyReleased(int key) {
  return library.IsKeyReleased(key);
}

/// Check if a key is NOT being pressed.
bool isKeyUp(int key) {
  return library.IsKeyUp(key);
}

/// Set a custom key to exit program (default is ESC).
void setExitKey(int key) {
  return library.SetExitKey(key);
}

/// Get key pressed (keycode), call it multiple times for keys queued,
/// returns 0 when the queue is empty.
int getKeyPressed() {
  return library.GetKeyPressed();
}

/// Get char pressed (unicode), call it multiple times for chars queued,
/// returns 0 when the queue is empty.
int getCharPressed() {
  return library.GetCharPressed();
}
