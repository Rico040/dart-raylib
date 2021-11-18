import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native.dart';

/// NPatchInfo, n-patch layout info.
class NPatchInfo extends NativeClass<raylib.NPatchInfo> {
  /// Construct NPatchInfo from native reference.
  NPatchInfo.fromRef(raylib.NPatchInfo ref) : super.fromRef(ref);

  /// Texture source rectangle.
  Rectangle get source => Rectangle.fromRef(ref.source);

  /// Left border offset.
  int get left => ref.left;

  /// Top border offset.
  int get top => ref.top;

  /// Right border offset.
  int get right => ref.right;

  /// Bottom border offset.
  int get bottom => ref.bottom;

  /// Layout of the n-patch: 3x3, 1x3 or 3x1.
  int get layout => ref.layout;
}
