import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Gamepad axis.
enum GamepadAxis {
  /// Gamepad left stick X axis.
  leftX,

  /// Gamepad left stick Y axis.
  leftY,

  /// Gamepad right stick X axis.
  rightX,

  /// Gamepad right stick Y axis.
  rightY,

  /// Gamepad back trigger left, pressure level: (1..-1).
  leftTrigger,

  /// Gamepad back trigger right, pressure level: (1..-1).
  rightTrigger,
}

/// Convert given enum to native value.
int gamepadAxisToNative(GamepadAxis axis) {
  switch (axis) {
    case GamepadAxis.leftX:
      return raylib.GamepadAxis.LEFT_X.value;
    case GamepadAxis.leftY:
      return raylib.GamepadAxis.LEFT_Y.value;
    case GamepadAxis.rightX:
      return raylib.GamepadAxis.RIGHT_X.value;
    case GamepadAxis.rightY:
      return raylib.GamepadAxis.RIGHT_Y.value;
    case GamepadAxis.leftTrigger:
      return raylib.GamepadAxis.LEFT_TRIGGER.value;
    case GamepadAxis.rightTrigger:
      return raylib.GamepadAxis.RIGHT_TRIGGER.value;
  }
}
