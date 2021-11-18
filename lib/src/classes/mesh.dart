import 'dart:ffi';

import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// Image, pixel data stored in CPU memory (RAM).
class Mesh extends NativeClass<raylib.Mesh> {
  /// Image, pixel data stored in CPU memory (RAM).
  Mesh.fromRef(raylib.Mesh ref)
      : vertices = PointerList(ref.vertices),
        texcoords = PointerList(ref.texcoords),
        texcoords2 = PointerList(ref.texcoords2),
        normals = PointerList(ref.normals),
        tangents = PointerList(ref.tangents),
        colors = PointerList(ref.colors),
        indices = PointerList(ref.indices),
        animVertices = PointerList(ref.animVertices),
        animNormals = PointerList(ref.animNormals),
        boneIds = PointerList(ref.boneIds),
        boneWeights = PointerList(ref.boneWeights),
        vboId = PointerList(ref.vboId),
        super.fromRef(ref);

  /// Number of vertices stored in arrays.
  int get vertexCount => ref.vertexCount;

  /// Number of triangles stored (indexed or not).
  int get triangleCount => ref.triangleCount;

  /// Vertex position. (XYZ - 3 components per vertex).
  ///
  /// Shader-location = 0.
  final PointerList<Float> vertices;

  /// Vertex texture coordinates (UV - 2 components per vertex).
  ///
  /// Shader-location = 1.
  final PointerList<Float> texcoords;

  /// Vertex second texture coordinates (useful for lightmaps).
  ///
  /// Shader-location = 5.
  final PointerList<Float> texcoords2;

  /// Vertex normals (XYZ - 3 components per vertex).
  ///
  /// Shader-location = 2.
  final PointerList<Float> normals;

  /// Vertex tangents (XYZW - 4 components per vertex).
  ///
  /// Shader-location = 4.
  final PointerList<Float> tangents;

  /// Vertex colors (RGBA - 4 components per vertex).
  ///
  /// Shader-location = 3.
  final PointerList<Uint8> colors;

  /// Vertex indices (in case vertex data comes indexed).
  final PointerList<Uint16> indices;

  /// Animated vertex positions (after bones transformations).
  final PointerList<Float> animVertices;

  /// Animated normals (after bones transformations).
  final PointerList<Float> animNormals;

  /// Vertex bone ids, max 255 bone ids, up to 4 bones influence by
  /// vertex (skinning).
  final PointerList<Uint8> boneIds;

  /// Vertex bone weight, up to 4 bones influence by vertex (skinning).
  final PointerList<Float> boneWeights;

  /// OpenGL Vertex Array Object id.
  int get vaoId => ref.vaoId;

  /// OpenGL Vertex Buffer Objects id (default vertex data).
  final PointerList<Uint32> vboId;
}
