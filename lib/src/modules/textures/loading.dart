import 'package:raylib/raylib.dart';
import 'package:raylib/src/raylib_instance.dart';
import 'package:raylib/src/utils/string.dart' as string;

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

/// Unload image from CPU memory (RAM).
void unloadImage(Image image) {
  return library.UnloadImage(image.ref);
}

// /// Load cubemap from image, multiple image cubemap layouts supported.
// TextureCubemap loadTextureCubemap(Image image, int layout) {
//   return raylibInstance. LoadTextureCubemap(image,  layout);
// }

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
