import 'package:raylib/src/generated_bindings.dart' as raylib;

/// System/Window config flags.
///
/// NOTE: Every bit registers one state (use it with bit masks).
/// By default all flags are set to 0.
abstract class ConfigFlags {
  /// Set to try enabling V-Sync on GPU.
  static final int vsyncHint = raylib.ConfigFlags.VSYNC_HINT.value;

  /// Set to run program in fullscreen.
  static final int fullscreenMode = raylib.ConfigFlags.FULLSCREEN_MODE.value;

  /// Set to allow resizable window.
  static final int windowResizable = raylib.ConfigFlags.WINDOW_RESIZABLE.value;

  /// Set to disable window decoration (frame and buttons).
  static final int windowUndecorated =
      raylib.ConfigFlags.WINDOW_UNDECORATED.value;

  /// Set to hide window.
  static final int windowHidden = raylib.ConfigFlags.WINDOW_HIDDEN.value;

  /// Set to minimize window (iconify).
  static final int windowMinimized = raylib.ConfigFlags.WINDOW_MINIMIZED.value;

  /// Set to maximize window (expanded to monitor).
  static final int windowMaximized = raylib.ConfigFlags.WINDOW_MAXIMIZED.value;

  /// Set to window non focused.
  static final int windowUnfocused = raylib.ConfigFlags.WINDOW_UNFOCUSED.value;

  /// Set to window always on top.
  static final int windowTopmost = raylib.ConfigFlags.WINDOW_TOPMOST.value;

  /// Set to allow windows running while minimized.
  static final int windowAlwaysRun = raylib.ConfigFlags.WINDOW_ALWAYS_RUN.value;

  /// Set to allow transparent framebuffer.
  static final int windowTransparent =
      raylib.ConfigFlags.WINDOW_TRANSPARENT.value;

  /// Set to support HighDPI.
  static final int windowHighDPI = raylib.ConfigFlags.WINDOW_HIGHDPI.value;

  /// Set to try enabling MSAA 4X.
  static final int msaa4xHint = raylib.ConfigFlags.MSAA_4X_HINT.value;

  /// Set to try enabling interlaced video format (for V3D).
  static final int interlacedHint = raylib.ConfigFlags.INTERLACED_HINT.value;
}
