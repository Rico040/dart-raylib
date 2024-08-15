import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Camera system modes.
enum CameraMode {
  /// Custom camera.
  custom,

  /// Free camera.
  free,

  /// Orbital camera.
  orbital,

  /// First person camera.
  firstPerson,

  /// Third person camera.
  thirdPerson,
}

/// Convert given enum to native value.
int cameraModeToNative(CameraMode mode) {
  switch (mode) {
    case CameraMode.custom:
      return raylib.CameraMode.CUSTOM.value;
    case CameraMode.free:
      return raylib.CameraMode.FREE.value;
    case CameraMode.orbital:
      return raylib.CameraMode.ORBITAL.value;
    case CameraMode.firstPerson:
      return raylib.CameraMode.FIRST_PERSON.value;
    case CameraMode.thirdPerson:
      return raylib.CameraMode.THIRD_PERSON.value;
  }
}
