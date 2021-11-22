import 'dart:ffi';

import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';

/// Get Color from a source pixel pointer of certain format.
Color getPixelColor(int format) {
  final color = Color(0, 0, 0, 0);
  library.GetPixelColor(color.pointer!.cast<Void>(), format);

  return color;
}

// /// Set color formatted into destination pixel pointer.
// void SetPixelColor(void *dstPtr, Color color, int format) {
//   return raylibInstance. SetPixelColor(dstPtr, Color color, int format);
// }

/// Get pixel data size in bytes for certain format.
int getPixelDataSize(int width, int height, int format) {
  return library.GetPixelDataSize(width, height, format);
}
