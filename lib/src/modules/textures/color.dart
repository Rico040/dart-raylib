import 'package:raylib/src/raylib_instance.dart';

// /// Get Color from a source pixel pointer of certain format.
// Color GetPixelColor(void *srcPtr, int format) {
//   return raylibInstance. GetPixelColor(srcPtr, int format);
// }

// /// Set color formatted into destination pixel pointer.
// void SetPixelColor(void *dstPtr, Color color, int format) {
//   return raylibInstance. SetPixelColor(dstPtr, Color color, int format);
// }

/// Get pixel data size in bytes for certain format.
int getPixelDataSize(int width, int height, int format) {
  return library.GetPixelDataSize(width, height, format);
}
