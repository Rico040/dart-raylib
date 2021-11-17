import 'package:raylib/src/classes/native_class.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Image, pixel data stored in CPU memory (RAM).
class Mesh extends NativeClass<raylib.Mesh> {
  /// Image, pixel data stored in CPU memory (RAM).
  Mesh.fromRef(raylib.Mesh ref) : super.fromRef(ref);
}
