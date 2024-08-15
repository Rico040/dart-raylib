import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Mouse buttons.
enum MouseButton {
  /// Mouse button left.
  left,

  /// Mouse button right.
  right,

  /// Mouse button middle (pressed wheel).
  middle,

  /// Mouse button side (advanced mouse device).
  side,

  /// Mouse button extra (advanced mouse device).
  extra,

  /// Mouse button fordward (advanced mouse device).
  forward,

  /// Mouse button back (advanced mouse device).
  back,
}

/// Convert given enum to native value.
int mouseButtonToNative(MouseButton button) {
  switch (button) {
    case MouseButton.left:
      return raylib.MouseButton.LEFT.value;
    case MouseButton.right:
      return raylib.MouseButton.RIGHT.value;
    case MouseButton.middle:
      return raylib.MouseButton.MIDDLE.value;
    case MouseButton.side:
      return raylib.MouseButton.SIDE.value;
    case MouseButton.extra:
      return raylib.MouseButton.EXTRA.value;
    case MouseButton.forward:
      return raylib.MouseButton.FORWARD.value;
    case MouseButton.back:
      return raylib.MouseButton.BACK.value;
  }
}
