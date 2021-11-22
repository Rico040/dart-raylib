import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Load model from files (meshes and materials).
Model loadModel(String fileName) {
  return Model.fromRef(library.LoadModel(string.toNative(fileName)));
}

/// Load model from generated mesh (default material).
Model loadModelFromMesh(Mesh mesh) {
  return Model.fromRef(library.LoadModelFromMesh(mesh.ref));
}

/// Unload model (including meshes) from memory (RAM and/or VRAM).
void unloadModel(Model model) {
  return library.UnloadModel(model.ref);
}

/// Unload model (but not meshes) from memory (RAM and/or VRAM).
void unloadModelKeepMeshes(Model model) {
  return library.UnloadModelKeepMeshes(model.ref);
}

/// Compute model bounding box limits (considers all meshes).
BoundingBox getModelBoundingBox(Model model) {
  return BoundingBox.fromRef(library.GetModelBoundingBox(model.ref));
}

/// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps).
Material loadMaterialDefault() {
  return Material.fromRef(library.LoadMaterialDefault());
}

/// Load materials from model file.
List<Material> loadMaterials(String fileName) {
  final materialCount = malloc<Int32>(sizeOf<Int32>());
  final result = library.LoadMaterials(
    string.toNative(fileName),
    materialCount,
  );

  return [
    for (var i = 0; i < materialCount.value; i++)
      Material.fromRef(result.elementAt(i).ref),
  ];
}

/// Unload material from GPU memory (VRAM).
void unloadMaterial(Material material) {
  return library.UnloadMaterial(material.ref);
}

/// Load materials from model file.
List<ModelAnimation> loadModelAnimations(String fileName) {
  final animCount = malloc<Uint32>(sizeOf<Uint32>());
  final result =
      library.LoadModelAnimations(string.toNative(fileName), animCount);

  return [
    for (var i = 0; i < animCount.value; i++)
      ModelAnimation.fromRef(result.elementAt(i).ref),
  ];
}

/// Update model animation pose.
// TODO(wolfen): void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);

/// Unload animation data.
void unloadModelAnimation(ModelAnimation modelAnimation) {
  return library.UnloadModelAnimation(modelAnimation.ref);
}

/// Unload animation array data.
// TODO(wolfen): void UnloadModelAnimations(ModelAnimation* animations, unsigned int count);

/// Check model animation skeleton match.
// TODO(wolfen): bool IsModelAnimationValid(Model model, ModelAnimation anim);
