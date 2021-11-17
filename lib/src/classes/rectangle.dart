import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/src/classes/native_class.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Rectangle, 4 components.
class Rectangle extends NativeClass<raylib.Rectangle> {
  /// Rectangle, 4 components.
  Rectangle(
    double x,
    double y,
    double width,
    double height,
  ) : pointer = malloc<raylib.Rectangle>(sizeOf<raylib.Rectangle>()) {
    ref = pointer!.ref;
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  /// Construct Rectangel from native reference.
  Rectangle.fromRef(raylib.Rectangle ref)
      : pointer = null,
        super.fromRef(ref);

  /// Native pointer, used internally.
  final Pointer<raylib.Rectangle>? pointer;

  /// Rectangle top-left corner position x.
  double get x => ref.x;
  set x(double x) => ref.x = x;

  /// Rectangle top-left corner position y.
  double get y => ref.y;
  set y(double y) => ref.y = y;

  /// Rectangle width.
  double get width => ref.width;
  set width(double width) => ref.width = width;

  /// Rectangle height.
  double get height => ref.height;
  set height(double height) => ref.height = height;
}
