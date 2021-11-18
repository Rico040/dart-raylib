import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Image, pixel data stored in CPU memory (RAM).
class Image extends NativeClass<raylib.Image> {
  /// Image, pixel data stored in CPU memory (RAM).
  Image.fromRef(raylib.Image ref) : super.fromRef(ref);

  /// Image raw data
  // ffi.Pointer<ffi.Void> get data => ref.data;

  /// Image base width.
  int get width => ref.width;

  /// Image base height.
  int get height => ref.height;

  /// Mipmap levels, 1 by default.
  int get mipmaps => ref.mipmaps;

  /// Data format (PixelFormat type).
  int get format => ref.format;
}
