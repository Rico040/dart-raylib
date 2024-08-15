import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Mouse cursor.
enum MouseCursor {
  /// Default pointer shape.
  defaultCursor,

  /// Arrow shape.
  arrow,

  /// Text writing cursor shape.
  ibeam,

  /// Cross shape.
  crosshair,

  /// Pointing hand cursor.
  pointingHand,

  /// Horizontal resize/move arrow shape.
  resizeEW,

  /// Vertical resize/move arrow shape.
  resizeNS,

  /// Top-left to bottom-right diagonal resize/move arrow shape.
  resizeNWSE,

  /// The top-right to bottom-left diagonal resize/move arrow shape.
  resizeNESW,

  /// The omni-directional resize/move cursor shape.
  resizeAll,

  /// The operation-not-allowed shape.
  notAllowed,
}

/// Convert given enum to native value.
int mouseCursorToNative(MouseCursor cursor) {
  switch (cursor) {
    case MouseCursor.defaultCursor:
      return raylib.MouseCursor.DEFAULT.value;
    case MouseCursor.arrow:
      return raylib.MouseCursor.ARROW.value;
    case MouseCursor.ibeam:
      return raylib.MouseCursor.IBEAM.value;
    case MouseCursor.crosshair:
      return raylib.MouseCursor.CROSSHAIR.value;
    case MouseCursor.pointingHand:
      return raylib.MouseCursor.POINTING_HAND.value;
    case MouseCursor.resizeEW:
      return raylib.MouseCursor.RESIZE_EW.value;
    case MouseCursor.resizeNS:
      return raylib.MouseCursor.RESIZE_NS.value;
    case MouseCursor.resizeNWSE:
      return raylib.MouseCursor.RESIZE_NWSE.value;
    case MouseCursor.resizeNESW:
      return raylib.MouseCursor.RESIZE_NESW.value;
    case MouseCursor.resizeAll:
      return raylib.MouseCursor.RESIZE_ALL.value;
    case MouseCursor.notAllowed:
      return raylib.MouseCursor.NOT_ALLOWED.value;
  }
}
