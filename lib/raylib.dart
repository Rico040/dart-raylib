import 'dart:ffi';
import 'dart:io';

import 'package:raylib/src/generated_bindings.dart';
import 'package:raylib/src/raylib_instance.dart';

/// Classes.
export 'src/classes/bone_info.dart';
export 'src/classes/camera_2d.dart';
export 'src/classes/camera_3d.dart';
export 'src/classes/color.dart';
export 'src/classes/font.dart';
export 'src/classes/glyph_info.dart';
export 'src/classes/image.dart';
export 'src/classes/material.dart';
export 'src/classes/material_map.dart';
export 'src/classes/matrix.dart';
export 'src/classes/mesh.dart';
export 'src/classes/model.dart';
export 'src/classes/model_animation.dart';
export 'src/classes/n_patch_info.dart';
export 'src/classes/ray.dart';
export 'src/classes/rectangle.dart';
export 'src/classes/render_texture.dart';
export 'src/classes/shader.dart';
export 'src/classes/texture.dart';
export 'src/classes/transform.dart';
export 'src/classes/vector2.dart';
export 'src/classes/vector3.dart';
export 'src/classes/vector4.dart';

/// Exporting enums.
export 'src/generated_bindings.dart'
    show
        BlendMode,
        CameraMode,
        ConfigFlags,
        CubemapLayout,
        FontType,
        GamepadAxis,
        GamepadButton,
        Gesture,
        KeyboardKey,
        MaterialMapIndex,
        MouseButton,
        MouseCursor,
        NPatchLayout,
        PixelFormat,
        ShaderAttributeDataType,
        ShaderLocationIndex,
        ShaderUniformDataType,
        TextureFilter,
        TextureWrap,
        TraceLogLevel;

/// Modules.
export 'src/modules/modules.dart';
export 'src/utils/pointer_list.dart' hide PointerList;

/// Used for accessing the material map diffuse.
const materialMapDiffuse = MATERIAL_MAP_DIFFUSE;

/// Used for accessing the material map specular.
const materialMapSpecular = MATERIAL_MAP_SPECULAR;

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
