import 'package:raylib/raylib.dart';
import 'package:raylib/src/raylib_instance.dart';

/// Draw a Texture2D.
void drawTexture(Texture2D texture, int posX, int posY, Color tint) {
  return library.DrawTexture(texture.ref, posX, posY, tint.ref);
}

/// Draw a Texture2D with position defined as Vector2.
void drawTextureV(Texture2D texture, Vector2 position, Color tint) {
  return library.DrawTextureV(texture.ref, position.ref, tint.ref);
}

/// Draw a Texture2D with extended parameters.
void drawTextureEx(
  Texture2D texture,
  Vector2 position,
  double rotation,
  double scale,
  Color tint,
) {
  return library.DrawTextureEx(
    texture.ref,
    position.ref,
    rotation,
    scale,
    tint.ref,
  );
}

/// Draw a part of a texture defined by a rectangle.
void drawTextureRec(
  Texture2D texture,
  Rectangle source,
  Vector2 position,
  Color tint,
) {
  return library.DrawTextureRec(
    texture.ref,
    source.ref,
    position.ref,
    tint.ref,
  );
}

/// Draw texture quad with tiling and offset parameters.
void drawTextureQuad(
  Texture2D texture,
  Vector2 tiling,
  Vector2 offset,
  Rectangle quad,
  Color tint,
) {
  return library.DrawTextureQuad(
    texture.ref,
    tiling.ref,
    offset.ref,
    quad.ref,
    tint.ref,
  );
}

/// Draw part of a texture (defined by a rectangle) with rotation and scale
/// tiled into dest..
void drawTextureTiled(
  Texture2D texture,
  Rectangle source,
  Rectangle dest,
  Vector2 origin,
  double rotation,
  double scale,
  Color tint,
) {
  return library.DrawTextureTiled(
    texture.ref,
    source.ref,
    dest.ref,
    origin.ref,
    rotation,
    scale,
    tint.ref,
  );
}

/// Draw a part of a texture defined by a rectangle with 'pro' parameters.
void drawTexturePro(
  Texture2D texture,
  Rectangle source,
  Rectangle dest,
  Vector2 origin,
  double rotation,
  Color tint,
) {
  return library.DrawTexturePro(
    texture.ref,
    source.ref,
    dest.ref,
    origin.ref,
    rotation,
    tint.ref,
  );
}

/// Draws a texture (or part of it) that stretches or shrinks nicely.
void drawTextureNPatch(
  Texture2D texture,
  NPatchInfo nPatchInfo,
  Rectangle dest,
  Vector2 origin,
  double rotation,
  Color tint,
) {
  return library.DrawTextureNPatch(
    texture.ref,
    nPatchInfo.ref,
    dest.ref,
    origin.ref,
    rotation,
    tint.ref,
  );
}

// /// Draw a textured polygon.
// void drawTexturePoly(Texture2D texture, Vector2 center, Vector2 *points, Vector2 *texcoords, int pointsCount, Color tint) {
//   return raylibInstance. DrawTexturePoly( texture.ref,  center, points,  texcoords,  pointsCount,  tint);
// }
