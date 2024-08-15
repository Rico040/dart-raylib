import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Texture parameters: wrap mode.
enum TextureWrap {
  /// Repeats texture in tiled mode.
  repeat,

  /// Clamps texture to edge pixel in tiled mode.
  clamp,

  /// Mirrors and repeats the texture in tiled mode.
  mirrorRepeat,

  /// Mirrors and clamps to border the texture in tiled mode.
  mirrorClamp,
}

/// Convert given enum to native value.
int textureWrapToNative(TextureWrap wrap) {
  switch (wrap) {
    case TextureWrap.repeat:
      return raylib.TextureWrap.REPEAT.value;
    case TextureWrap.clamp:
      return raylib.TextureWrap.CLAMP.value;
    case TextureWrap.mirrorRepeat:
      return raylib.TextureWrap.MIRROR_REPEAT.value;
    case TextureWrap.mirrorClamp:
      return raylib.TextureWrap.MIRROR_CLAMP.value;
  }
}
