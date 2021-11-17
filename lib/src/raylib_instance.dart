import 'package:raylib/src/generated_bindings.dart';

late final Raylib? _library;

/// Dynamic library of raylib.
Raylib get library {
  if (_library == null) {
    throw Exception(
      'Raylib has not been initialized, did you call initLibrary()?',
    );
  }
  return _library!;
}

set library(Raylib lib) => _library = lib;
