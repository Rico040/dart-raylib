import 'dart:ffi';
import 'dart:io';

import 'package:raylib/src/generated_bindings.dart';
import 'package:raylib/src/raylib_instance.dart';

/// Classes
export 'src/classes/camera_2d.dart';
export 'src/classes/camera_3d.dart';
export 'src/classes/color.dart';
export 'src/classes/font.dart';
export 'src/classes/glyph_info.dart';
export 'src/classes/image.dart';
export 'src/classes/matrix.dart';
export 'src/classes/mesh.dart';
export 'src/classes/n_patch_info.dart';
export 'src/classes/ray.dart';
export 'src/classes/rectangle.dart';
export 'src/classes/render_texture.dart';
export 'src/classes/texture.dart';
export 'src/classes/vector2.dart';
export 'src/classes/vector3.dart';
export 'src/classes/vector4.dart';

/// Modules
export 'src/modules/modules.dart';

// ignore: directives_ordering
/// Exporting enums
// TODO(wolfen): Map to enums
export 'src/generated_bindings.dart'
    show
        CameraMode,
        BlendMode,
        ConfigFlags,
        Gesture,
        KeyboardKey,
        MouseButton,
        MouseCursor,
        MaterialMapIndex,
        ShaderLocationIndex,
        ShaderUniformDataType,
        ShaderAttributeDataType,
        PixelFormat,
        TextureFilter,
        TextureWrap,
        CubemapLayout,
        FontType,
        NPatchLayout,
        TraceLogLevel,
        GamepadAxis,
        GamepadButton;

export 'src/utils/pointer_list.dart' hide PointerList;

/// Initialize the raylib library by passing the path to the library for each
/// supported platform.
void initLibrary({
  String? linux,
  String? windows,
}) {
  if (Platform.isLinux && linux == null) {
    throw Exception('Running on linux but no library path was provided');
  } else if (Platform.isWindows && windows == null) {
    throw Exception('Running on windows but no library path was provided');
  }

  final String libraryPath;
  if (Platform.isLinux) {
    libraryPath = linux!;
  } else if (Platform.isWindows) {
    libraryPath = windows!;
  } else {
    throw UnsupportedError(
      '''
Platform ${Platform.operatingSystem} is untested and therefore unsupported.
Please file a bug report if you think this is incorrect
''',
    );
  }

  library = Raylib(DynamicLibrary.open(libraryPath));
}
