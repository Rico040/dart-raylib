import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Turn a list of [Matrix] into a pointer.
Pointer<raylib.Matrix> toPointer(List<Matrix> transforms) {
  final pointer = malloc<raylib.Matrix>(
    sizeOf<raylib.Matrix>() * transforms.length,
  );
  for (var i = 0; i < transforms.length; i++) {
    (pointer + i).ref.m0 = transforms[i].m0;
    (pointer + i).ref.m4 = transforms[i].m4;
    (pointer + i).ref.m8 = transforms[i].m8;
    (pointer + i).ref.m12 = transforms[i].m12;

    (pointer + i).ref.m1 = transforms[i].m1;
    (pointer + i).ref.m5 = transforms[i].m5;
    (pointer + i).ref.m9 = transforms[i].m9;
    (pointer + i).ref.m13 = transforms[i].m13;

    (pointer + i).ref.m2 = transforms[i].m2;
    (pointer + i).ref.m6 = transforms[i].m6;
    (pointer + i).ref.m10 = transforms[i].m10;
    (pointer + i).ref.m14 = transforms[i].m14;

    (pointer + i).ref.m3 = transforms[i].m3;
    (pointer + i).ref.m7 = transforms[i].m7;
    (pointer + i).ref.m11 = transforms[i].m11;
    (pointer + i).ref.m15 = transforms[i].m15;
  }
  return pointer;
}
