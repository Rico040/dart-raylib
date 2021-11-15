import 'package:raylib/src/raylib_instance.dart';

/// Set camera pan key to combine with mouse movement (free camera).
void setCameraPanControl(int keyPan) {
  return library.SetCameraPanControl(keyPan);
}

/// Set camera alt key to combine with mouse movement (free camera).
void setCameraAltControl(int keyAlt) {
  return library.SetCameraAltControl(keyAlt);
}

/// Set camera smooth zoom key to combine with mouse (free camera).
void setCameraSmoothZoomControl(int keySmoothZoom) {
  return library.SetCameraSmoothZoomControl(keySmoothZoom);
}

/// Set camera move controls (1st person and 3rd person cameras).
void setCameraMoveControls(
  int keyFront,
  int keyBack,
  int keyRight,
  int keyLeft,
  int keyUp,
  int keyDown,
) {
  return library.SetCameraMoveControls(
    keyFront,
    keyBack,
    keyRight,
    keyLeft,
    keyUp,
    keyDown,
  );
}
