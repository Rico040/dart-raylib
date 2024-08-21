import 'dart:math';

import 'package:raylib/raylib.dart';

/// Vector with components value 0
Vector2 vector2Zero() {
  return Vector2(0, 0);
}

/// Vector with components value 0
Vector2 vector2One() {
  return Vector2(1, 1);
}

/// Add two vectors (v1 + v2)
Vector2 vector2Add(Vector2 v1, Vector2 v2) {
  return Vector2(v1.x + v2.x, v1.y + v2.y);
}

/// Add vector and double value
Vector2 vector2AddValue(Vector2 v, double add) {
  return Vector2(v.x + add, v.y + add);
}

/// Subtract two vectors (v1 - v2)
Vector2 vector2Subtract(Vector2 v1, Vector2 v2) {
  return Vector2(v1.x - v2.x, v1.y - v2.y);
}

/// Subtract two vectors (v1 - v2)
Vector2 vector2SubtractValue(Vector2 v, double sub) {
  return Vector2(v.x - sub, v.y - sub);
}

/// Calculate vector length
double vector2Length(Vector2 v) {
  return sqrt((v.x * v.x) + (v.y * v.y));
}

/// Calculate vector square length
double vector2LengthSqr(Vector2 v) {
  return (v.x * v.x) + (v.y * v.y);
}

/// Calculate two vectors dot product
double vector2DotProduct(Vector2 v1, Vector2 v2) {
  return v1.x * v2.x + v1.y * v2.y;
}

/// Calculate distance between two vectors
double vector2Distance(Vector2 v1, Vector2 v2) {
  return sqrt((v1.x - v2.x) * (v1.x - v2.x) + (v1.y - v2.y) * (v1.y - v2.y));
}

/// Calculate square distance between two vectors
double vector2DistanceSqr(Vector2 v1, Vector2 v2) {
  return (v1.x - v2.x) * (v1.x - v2.x) + (v1.y - v2.y) * (v1.y - v2.y);
}

/// Calculate angle between two vectors
/// NOTE: Angle is calculated from origin point (0, 0)
double vector2Angle(Vector2 v1, Vector2 v2) {
  final dot = v1.x * v2.x + v1.y * v2.y;
  final det = v1.x * v2.x - v1.y * v2.y;

  return atan2(det, dot);
}

/// Calculate angle defined by a two vectors line
/// NOTE: Parameters need to be normalized
/// Current implementation should be aligned with glm::angle
double vector2LineAngle(Vector2 start, Vector2 end) {
  return -atan2(end.y - start.y, end.x - start.x);
}

/// Scale vector (multiply by value)
Vector2 vector2Scale(Vector2 v, double scale) {
  return Vector2(v.x * scale, v.y * scale);
}

/// Multiply vector by vector
Vector2 vector2Multiply(Vector2 v1, Vector2 v2) {
  return Vector2(v1.x * v2.x, v1.y * v2.y);
}

/// Negate vector
Vector2 vector2Negate(Vector2 v) {
  return Vector2(-v.x, -v.y);
}

/// Divide vector by vector
Vector2 vector2Divide(Vector2 v1, Vector2 v2) {
  return Vector2(v1.x / v2.x, v1.y / v2.y);
}

/// Normalize provided vector
Vector2 vector2Normalize(Vector2 v) {
  final result = Vector2(0, 0);
  final length = sqrt((v.x * v.x) + (v.y * v.y));

  if (length > 0) {
    final ilength = 1.0 / length;
    result
      ..x = v.x * ilength
      ..y = v.y * ilength;
  }

  return result;
}

/// Transforms a Vector2 by given Matrix
Vector2 vector2Transform(Vector2 v, Matrix mat) {
  final result = Vector2(0, 0);

  final x = v.x;
  final y = v.y;
  const z = 0;

  result
    ..x = mat.m0 * x + mat.m4 * y + mat.m8 * z + mat.m12
    ..y = mat.m1 * x + mat.m5 * y + mat.m9 * z + mat.m13;

  return result;
}

/// Calculate linear interpolation between two vectors
Vector2 vector2Lerp(Vector2 v1, Vector2 v2, double amount) {
  return Vector2(v1.x + amount * (v2.x - v1.x), v1.y + amount * (v2.y - v1.y));
}

/// Calculate reflected vector to normal
Vector2 vector2Reflect(Vector2 v, Vector2 normal) {
  final dotProduct = v.x * normal.x + v.y * normal.y;

  return Vector2(
    v.x - (2.0 * normal.x) * dotProduct,
    v.y - (2.0 * normal.y) * dotProduct,
  );
}

/// Get min value for each pair of components
Vector2 vector2Min(Vector2 v1, Vector2 v2) {
  return Vector2(min(v1.x, v2.x), min(v1.y, v2.y));
}

/// Get max value for each pair of components
Vector2 vector2Max(Vector2 v1, Vector2 v2) {
  return Vector2(max(v1.x, v2.x), max(v1.y, v2.y));
}

/// Rotate vector by angle
Vector2 vector2Rotate(Vector2 v, double angle) {
  final cosres = cos(angle);
  final sinres = sin(angle);

  return Vector2(
    v.x * cosres - v.y * sinres,
    v.x * sinres + v.y * cosres,
  );
}
