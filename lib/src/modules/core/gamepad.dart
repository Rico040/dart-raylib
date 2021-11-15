import 'package:raylib/src/raylib_instance.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Check if a gamepad is available.
bool isGamepadAvailable(int gamepad) {
  return library.IsGamepadAvailable(gamepad);
}

/// Get gamepad internal name id.
String getGamepadName(int gamepad) {
  return string.toDart(library.GetGamepadName(gamepad));
}

/// Check if a gamepad button has been pressed once.
bool isGamepadButtonPressed(int gamepad, int button) {
  return library.IsGamepadButtonPressed(gamepad, button);
}

/// Check if a gamepad button is being pressed.
bool isGamepadButtonDown(int gamepad, int button) {
  return library.IsGamepadButtonDown(gamepad, button);
}

/// Check if a gamepad button has been released once.
bool isGamepadButtonReleased(int gamepad, int button) {
  return library.IsGamepadButtonReleased(gamepad, button);
}

/// Check if a gamepad button is NOT being pressed.
bool isGamepadButtonUp(int gamepad, int button) {
  return library.IsGamepadButtonUp(gamepad, button);
}

/// Get the last gamepad button pressed.
int getGamepadButtonPressed() {
  return library.GetGamepadButtonPressed();
}

/// Get gamepad axis count for a gamepad.
int getGamepadAxisCount(int gamepad) {
  return library.GetGamepadAxisCount(gamepad);
}

/// Get axis movement value for a gamepad axis.
double getGamepadAxisMovement(int gamepad, int axis) {
  return library.GetGamepadAxisMovement(gamepad, axis);
}

/// Set internal gamepad mappings (SDL_GameControllerDB).
int setGamepadMappings(String mappings) {
  return library.SetGamepadMappings(string.toNative(mappings));
}
