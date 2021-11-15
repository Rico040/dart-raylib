import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/classes/native_class.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/raylib_instance.dart';

/// Camera2D, defines position/orientation in 2d space.
class Camera2D extends NativeClass<raylib.Camera2D> {
  /// Camera2D, defines position/orientation in 2d space.
  Camera2D({
    Vector2? offset,
    Vector2? target,
    double zoom = 1,
    double rotation = 0,
  }) : pointer = malloc<raylib.Camera2D>() {
    offset ??= Vector2.zero();
    target ??= Vector2.zero();

    ref = pointer!.ref;
    this.offset = offset;
    this.target = target;
    this.zoom = zoom;
    this.rotation = rotation;
  }

  final Pointer<raylib.Camera2D>? pointer;

  /// Camera offset (displacement from target).
  Vector2 get offset => Vector2.fromRef(ref.offset);
  set offset(Vector2 offset) {
    ref.offset.x = offset.x;
    ref.offset.y = offset.y;
  }

  /// Camera target (rotation and zoom origin).
  Vector2 get target => Vector2.fromRef(ref.target);
  set target(Vector2 target) {
    ref.target.x = target.x;
    ref.target.y = target.y;
  }

  /// Camera zoom (scaling), should be 1.0f by default.
  double get zoom => ref.zoom;
  set zoom(double zoom) => ref.zoom = zoom;

  /// Camera rotation in degrees.
  double get rotation => ref.rotation;
  set rotation(double rotation) => ref.rotation = rotation;

  /// Get camera 2d transform matrix.
  Matrix get matrix => Matrix.fromRef(library.GetCameraMatrix2D(ref));

  /// Get the screen space position for a 2d camera world space position.
  Vector2 worldToScreen(Vector2 position) {
    return Vector2.fromRef(
      library.GetWorldToScreen2D(
        position.ref,
        ref,
      ),
    );
  }

  /// Get the world space position for a 2d camera screen space position.
  Vector2 screenToWorld(Vector2 position) {
    return Vector2.fromRef(
      library.GetScreenToWorld2D(
        position.ref,
        ref,
      ),
    );
  }
}
