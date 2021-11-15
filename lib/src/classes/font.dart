import 'package:raylib/raylib.dart';
import 'package:raylib/src/classes/native_class.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Font, font texture and GlyphInfo array data.
class Font extends NativeClass<raylib.Font> {
  /// Font, font texture and GlyphInfo array data.
  Font.fromRef(raylib.Font ref) : super.fromRef(ref);

  /// Base size (default chars height).
  int get baseSize => ref.baseSize;

  /// Number of glyph characters.
  int get glyphCount => ref.glyphCount;

  /// Padding around the glyph characters.
  int get glyphPadding => ref.glyphCount;

  /// Texture atlas containing the glyphs.
  Texture2D get texture => Texture.fromRef(ref.texture);

  /// Rectangles in texture for the glyphs.
  // external ffi.Pointer<Rectangle> recs;

  /// Glyphs info data.
  // external ffi.Pointer<GlyphInfo> glyphs;
}
