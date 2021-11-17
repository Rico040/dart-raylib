import 'dart:ffi';
import 'dart:io';

import 'package:raylib/src/generated_bindings.dart';
import 'package:yaml/yaml.dart';

String _resolvePath(Uri path) {
  // TODO: Resolving should not depend on pubspec cause that wont be accessable when compiled.

  /// Recursively resolve pubspec file.
  final pubspecPath = path.resolve('./pubspec.yaml');
  if (pubspecPath.path == '/pubspec.yaml') {
    throw Exception('No pubspec file found, are you in the right directory?');
  }
  if (!File.fromUri(pubspecPath).existsSync()) {
    return _resolvePath(path.resolve('../'));
  }

  // Load pubspec.
  final pubspec = loadYaml(
    File.fromUri(pubspecPath).readAsStringSync(),
  ) as YamlMap;

  final raylib = pubspec['raylib'] as YamlMap?;
  final platform = raylib?['platform'] as YamlMap?;

  // Retrieve library path for platform.
  final libPath = {
    'linux': platform?['linux'] as String? ??
        pubspecPath.resolve('./include/libraylib.so').path,
    'macos': platform?['macos'] as String? ??
        pubspecPath.resolve('./include/libraylib.dylib').path,
  }[Platform.operatingSystem];

  if (libPath == null) {
    throw Exception('Unsupported platform: ${Platform.operatingSystem}');
  }
  if (!File(libPath).existsSync()) {
    throw Exception('Could not find $libPath');
  }

  return libPath;
}

/// Dynamic library of raylib.
final library = Raylib(DynamicLibrary.open(_resolvePath(Platform.script)));
