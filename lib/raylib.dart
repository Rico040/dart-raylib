import 'package:raylib/src/generated_bindings.dart';

export 'src/classes/bone_info.dart';

/// Classes.
export 'src/classes/bounding_box.dart';
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
export 'src/classes/ray_collision.dart';
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

export 'src/library.dart' hide library;

/// Modules.
export 'src/modules/modules.dart';
export 'src/utils/pointer_list.dart' hide PointerList;

/// Used for accessing the material map diffuse.
const materialMapDiffuse = MATERIAL_MAP_DIFFUSE;

/// Used for accessing the material map specular.
const materialMapSpecular = MATERIAL_MAP_SPECULAR;
