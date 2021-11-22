import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Load image from file into CPU memory (RAM).
Image loadImage(String fileName) {
  return Image.fromRef(library.LoadImage(string.toNative(fileName)));
}

/// Load image from RAW file data.
Image loadImageRaw(
  String fileName,
  int width,
  int height,
  int format, // TODO(wolfen): enum?
  int headerSize,
) {
  return Image.fromRef(
    library.LoadImageRaw(
      string.toNative(fileName),
      width,
      headerSize,
      format,
      headerSize,
    ),
  );
}

/// Load image sequence from file (frames appended to image.data).
Image loadImageAnim(String fileName) {
  final frames = malloc<Int32>(sizeOf<Int32>());
  // TODO: how to handle out params?

  return Image.fromRef(
    library.LoadImageAnim(
      string.toNative(fileName),
      frames,
    ),
  );
}

/// Load image from memory buffer.
Image loadImageFromMemory(String fileType, String fileData, int dataSize) {
  return Image.fromRef(
    library.LoadImageFromMemory(
      string.toNative(fileType),
      string.toNativeUnsigned(fileData),
      dataSize,
    ),
  );
}

/// Load image from GPU texture data.
Image loadImageFromTexture(Texture2D texture) {
  return Image.fromRef(library.LoadImageFromTexture(texture.ref));
}

/// Load image from screen buffer and (screenshot).
Image loadImageFromScreen() {
  return Image.fromRef(library.LoadImageFromScreen());
}

/// Unload image from CPU memory (RAM).
void unloadImage(Image image) {
  library.UnloadImage(image.ref);
}

/// Export image data to file, returns true on success.
bool exportImage(Image image, String fileName) {
  return library.ExportImage(image.ref, string.toNative(fileName));
}

/// Export image as code file defining an array of bytes,
/// returns true on success.
bool exportImageAsCode(Image image, String fileName) {
  return library.ExportImageAsCode(image.ref, string.toNative(fileName));
}

/// Load texture from file into GPU memory (VRAM).
Texture2D loadTexture(String fileName) {
  return Texture2D.fromRef(
    library.LoadTexture(
      string.toNative(fileName),
    ),
  );
}

/// Load texture from image data.
Texture2D loadTextureFromImage(Image image) {
  return Texture2D.fromRef(library.LoadTextureFromImage(image.ref));
}

/// Load cubemap from image, multiple image cubemap layouts supported.
TextureCubemap loadTextureCubemap(Image image, int layout) {
  return TextureCubemap.fromRef(
    library.LoadTextureCubemap(image.ref, layout),
  );
}

/// Load texture for rendering (framebuffer).
RenderTexture2D loadRenderTexture(int width, int height) {
  return RenderTexture2D.fromRef(
    library.LoadRenderTexture(width, height),
  );
}

/// Unload texture from GPU memory (VRAM).
void unloadTexture(Texture2D texture) {
  return library.UnloadTexture(texture.ref);
}

/// Unload render texture from GPU memory (VRAM).
void unloadRenderTexture(RenderTexture2D target) {
  return library.UnloadRenderTexture(target.ref);
}

// /// Update GPU texture with new data.
// void updateTexture(Texture2D texture, const void *pixels) {
//   return raylibInstance. UpdateTexture(texture, pixels);
// }

// /// Update GPU texture rectangle with new data.
// void updateTextureRec(Texture2D texture, Rectangle rec, const void *pixels) {
//   return raylibInstance. UpdateTextureRec(texture.ref, rec.ref, pixels);
// }

// TODO(wolfen): this
// /// Generate GPU mipmaps for a texture.
// void genTextureMipmaps(Texture texture) {
//   final pointer = malloc<raylib.Texture>(sizeOf<raylib.Texture>());
//    library.GenTextureMipmaps(pointer);
//    return
// }

/// Set texture scaling filter mode.
// TODO(wolfen): use enum
void setTextureFilter(Texture texture, int filter) {
  return library.SetTextureFilter(texture.ref, filter);
}

/// Set texture wrapping mode.
// TODO(wolfen): use enum
void setTextureWrap(Texture texture, int wrap) {
  return library.SetTextureWrap(texture.ref, wrap);
}
