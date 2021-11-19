import 'dart:convert';
import 'dart:ffi';

import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_array.dart';
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// ModelAnimation.
class ModelAnimation extends NativeClass<raylib.ModelAnimation> {
  /// ModelAnimation
  ModelAnimation.fromRef(raylib.ModelAnimation ref) : super.fromRef(ref);

  /// Number of bones.
  external int boneCount;

  /// Number of animation frames.
  external int frameCount;

  /// Bones information (skeleton).
  PointerList<raylib.BoneInfo> get bones => PointerList(ref.bones);

  /// Poses array by frame.
  // TODO(wolfen): Nested pointer lists
  // PointerList<raylib.Transform> get framePoses => PointerList(ref.framePoses);
  // external ffi.Pointer<ffi.Pointer<Transform>> framePoses;
}
