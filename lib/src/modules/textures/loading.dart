import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Unload image from CPU memory (RAM).
void unloadImage(Image image) {
  library.UnloadImage(image.ref);
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
// void genTextureMipmaps() {
//   return library.GenTextureMipmaps(pointer);
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
