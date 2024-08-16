import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Matrix, 4x4 components, column major, OpenGL style, right handed.
class Matrix extends NativeClass<raylib.Matrix> {
  /// Construct zero matrix
  Matrix() : super.fromRef(malloc<raylib.Matrix>(sizeOf<raylib.Matrix>()).ref) {
    ref
      ..m0 = 0
      ..m1 = 0
      ..m2 = 0
      ..m3 = 0
      ..m4 = 0
      ..m5 = 0
      ..m6 = 0
      ..m7 = 0
      ..m8 = 0
      ..m9 = 0
      ..m10 = 0
      ..m11 = 0
      ..m12 = 0
      ..m13 = 0
      ..m14 = 0
      ..m15 = 0;
  }

  /// Construct matrix with provided values
  Matrix.withValues(
    double m0,
    double m4,
    double m8,
    double m12,
    double m1,
    double m5,
    double m9,
    double m13,
    double m2,
    double m6,
    double m10,
    double m14,
    double m3,
    double m7,
    double m11,
    double m15,
  ) : super.fromRef(malloc<raylib.Matrix>(sizeOf<raylib.Matrix>()).ref) {
    ref
      ..m0 = m0
      ..m1 = m1
      ..m2 = m2
      ..m3 = m3
      ..m4 = m4
      ..m5 = m5
      ..m6 = m6
      ..m7 = m7
      ..m8 = m8
      ..m9 = m9
      ..m10 = m10
      ..m11 = m11
      ..m12 = m12
      ..m13 = m13
      ..m14 = m14
      ..m15 = m15;
  }

  /// Construct Matrix from native reference.
  Matrix.fromRef(super.ref) : super.fromRef();

  /// Matrix first row (4 components) first.
  double get m0 => ref.m0;
  set m0(double m0) => ref.m0 = m0;

  /// Matrix first row (4 components) second.
  double get m4 => ref.m4;
  set m4(double m4) => ref.m4 = m4;

  /// Matrix first row (4 components) third.
  double get m8 => ref.m8;
  set m8(double m8) => ref.m8 = m8;

  /// Matrix first row (4 components) fourth.
  double get m12 => ref.m12;
  set m12(double m12) => ref.m12 = m12;

  /// Matrix second row (4 components) first.
  double get m1 => ref.m1;
  set m1(double m1) => ref.m1 = m1;

  /// Matrix second row (4 components) second.
  double get m5 => ref.m5;
  set m5(double m5) => ref.m5 = m5;

  /// Matrix second row (4 components) third.
  double get m9 => ref.m9;
  set m9(double m9) => ref.m9 = m9;

  /// Matrix second row (4 components) fourth.
  double get m13 => ref.m13;
  set m13(double m13) => ref.m13 = m13;

  /// Matrix third row (4 components) first.
  double get m2 => ref.m2;
  set m2(double m2) => ref.m2 = m2;

  /// Matrix third row (4 components) second.
  double get m6 => ref.m6;
  set m6(double m6) => ref.m6 = m6;

  /// Matrix third row (4 components) third.
  double get m10 => ref.m10;
  set m10(double m10) => ref.m10 = m10;

  /// Matrix third row (4 components) fourth.
  double get m14 => ref.m14;
  set m14(double m14) => ref.m14 = m14;

  /// Matrix fourth row (4 components) first.
  double get m3 => ref.m3;
  set m3(double m3) => ref.m3 = m3;

  /// Matrix fourth row (4 components) second.
  double get m7 => ref.m7;
  set m7(double m7) => ref.m7 = m7;

  /// Matrix fourth row (4 components) third.
  double get m11 => ref.m11;
  set m11(double m11) => ref.m11 = m11;

  /// Matrix fourth row (4 components) fourth.
  double get m15 => ref.m15;
  set m15(double m15) => ref.m15 = m15;
}
