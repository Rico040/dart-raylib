import 'package:raylib/raylib.dart';
import 'package:raylib/src/classes/native_class.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;

/// GlyphInfo, font characters glyphs info.
class GlyphInfo extends NativeClass<raylib.GlyphInfo> {
  /// GlyphInfo, font characters glyphs info.
  GlyphInfo.fromRef(raylib.GlyphInfo ref) : super.fromRef(ref);

  /// Character value (Unicode),
  int get value => ref.value;

  /// Character offset X when drawing,
  int get offsetX => ref.offsetX;

  /// Character offset Y when drawing,
  int get offsetY => ref.offsetY;

  /// Character advance position X,
  int get advanceX => ref.advanceX;

  /// Character image data
  Image get image => Image.fromRef(ref.image);
}
