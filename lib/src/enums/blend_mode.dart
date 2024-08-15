import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Color blending modes (pre-defined).
enum BlendMode {
  /// Blend textures considering alpha (default).
  alpha,

  /// Blend textures adding colors.
  additive,

  /// Blend textures multiplying colors.
  multiplied,

  /// Blend textures adding colors (alternative).
  addColors,

  /// Blend textures subtracting colors (alternative).
  subtractColors,

  /// Blend textures using custom src/dst factors (use rlSetBlendMode()).
  custom,
}

/// Convert given enum to native value.
int blendModeToNative(BlendMode mode) {
  switch (mode) {
    case BlendMode.alpha:
      return raylib.BlendMode.ALPHA.value;
    case BlendMode.additive:
      return raylib.BlendMode.ADDITIVE.value;
    case BlendMode.multiplied:
      return raylib.BlendMode.MULTIPLIED.value;
    case BlendMode.addColors:
      return raylib.BlendMode.ADD_COLORS.value;
    case BlendMode.subtractColors:
      return raylib.BlendMode.SUBTRACT_COLORS.value;
    case BlendMode.custom:
      return raylib.BlendMode.CUSTOM.value;
  }
}
