import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Turn a list of [Vector2] into a pointer.
Pointer<raylib.ModelAnimation> toPointer(List<ModelAnimation> animations) {
  final pointer = malloc<raylib.ModelAnimation>(
    sizeOf<raylib.ModelAnimation>() * animations.length,
  );
  for (var i = 0; i < animations.length; i++) {
    (pointer + i).ref.boneCount = animations[i].boneCount;
    (pointer + i).ref.bones = animations[i].bones.pointer;
    (pointer + i).ref.frameCount = animations[i].frameCount;
    (pointer + i).ref.framePoses = animations[i].framePoses.pointer;
  }
  return pointer;
}
