import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Gesture.
///
/// NOTE: It could be used as flags to enable only some gestures.
abstract class Gesture {
  /// No gesture.
  static final int none = raylib.Gesture.NONE.value;

  /// Tap gesture.
  static final int tap = raylib.Gesture.TAP.value;

  /// Double tap gesture.
  static final int doubleTap = raylib.Gesture.DOUBLETAP.value;

  /// Hold gesture.
  static final int hold = raylib.Gesture.HOLD.value;

  /// Drag gesture.
  static final int drag = raylib.Gesture.DRAG.value;

  /// Swipe right gesture.
  static final int swipeRight = raylib.Gesture.SWIPE_RIGHT.value;

  /// Swipe left gesture.
  static final int swipeLeft = raylib.Gesture.SWIPE_LEFT.value;

  /// Swipe up gesture.
  static final int swipeUp = raylib.Gesture.SWIPE_UP.value;

  /// Swipe down gesture.
  static final int swipeDown = raylib.Gesture.SWIPE_DOWN.value;

  /// Pinch in gesture.
  static final int pinchIn = raylib.Gesture.PINCH_IN.value;

  /// Pinch out gesture.
  static final int pinchOut = raylib.Gesture.PINCH_OUT.value;
}
