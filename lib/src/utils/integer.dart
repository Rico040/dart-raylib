import 'dart:ffi';

import 'package:ffi/ffi.dart';

/// Turn a list of [int] into a pointer.
Pointer<Int> toPointer(List<int> points) {
  final pointer = malloc<Int>(
    sizeOf<Int>() * points.length,
  );
  for (var i = 0; i < points.length; i++) {
    pointer.elementAt(i).value = points[i];
  }
  return pointer;
}
