import 'dart:math';

import 'package:raylib/src/constants/raymath.dart';

/// Clamp float value
double clamp(double value, double min, double max) {
  var result = value < min ? min : max;

  if (result > max) result = max;

  return result;
}

/// Calculate linear interpolation between two floats
double lerp(double start, double end, double amount) {
  return start + amount * (end - start);
}

/// Normalize input value within input range
double normalize(double value, double start, double end) {
  return (value - start) / (end - start);
}

/// Remap input value within input range to output range
double remap(
  double value,
  double inputStart,
  double inputEnd,
  double outputStart,
  double outputEnd,
) {
  return (value - inputStart) /
          (inputEnd - inputStart) *
          (outputEnd - outputStart) +
      outputStart;
}

/// Wrap input value from min to max
double wrap(double value, double min, double max) {
  return value - (max - min) * ((value - min) / (max - min)).floorToDouble();
}

/// Check whether two given floats are almost equal
bool floatEquals(double x, double y) {
  return (x - y).abs() <= (epsilon * max(x.abs(), max(x.abs(), y.abs())));
}
