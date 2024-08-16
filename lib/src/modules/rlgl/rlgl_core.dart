import 'package:raylib/src/library.dart';

/// Enable backface culling.
void enableBackfaceCulling() {
  library.rlEnableBackfaceCulling();
}

/// Disable backface culling.
void disableBackfaceCulling() {
  library.rlDisableBackfaceCulling();
}

/// Enable depth write.
void enableDepthMask() {
  library.rlEnableDepthMask();
}

/// Disable depth write.
void disableDepthMask() {
  library.rlDisableDepthMask();
}

/// Enable depth test.
void enableDepthTest() {
  library.rlEnableDepthTest();
}

/// Disable depth test.
void disableDepthTest() {
  library.rlDisableDepthTest();
}

/// Clear used screen buffers (color and depth)
void clearScreenBuffers() {
  library.rlClearScreenBuffers();
}
