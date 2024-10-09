import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Turn a list of [GlyphInfo] into a pointer.
Pointer<raylib.GlyphInfo> toPointer(List<GlyphInfo> glyphs) {
  final pointer = malloc<raylib.GlyphInfo>(
    sizeOf<raylib.GlyphInfo>() * glyphs.length,
  );
  for (var i = 0; i < glyphs.length; i++) {
    (pointer + i).ref.value = glyphs[i].value;
    (pointer + i).ref.offsetX = glyphs[i].offsetX;
    (pointer + i).ref.offsetY = glyphs[i].offsetY;
    (pointer + i).ref.advanceX = glyphs[i].advanceX;
    (pointer + i).ref.image = glyphs[i].image.ref;
  }
  return pointer;
}
