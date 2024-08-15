import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';

/// Generate image: plain color.
Image genImageColor(
  int width,
  int height,
  Color color,
) {
  return Image.fromRef(library.GenImageColor(width, height, color.ref));
}

/// Generate image: linear gradient.
Image genImageGradientLinear(
  int width,
  int height,
  int direction,
  Color start,
  Color end,
) {
  return Image.fromRef(
    library.GenImageGradientLinear(
      width,
      height,
      direction,
      start.ref,
      end.ref,
    ),
  );
}

/// Generate image: radial gradient.
Image genImageGradientRadial(
  int width,
  int height,
  double density,
  Color inner,
  Color outer,
) {
  return Image.fromRef(
    library.GenImageGradientRadial(
      width,
      height,
      density,
      inner.ref,
      outer.ref,
    ),
  );
}

/// Generate image: checked.
Image genImageChecked(
  int width,
  int height,
  int checksX,
  int checksY,
  Color col1,
  Color col2,
) {
  return Image.fromRef(
    library.GenImageChecked(
      width,
      height,
      checksX,
      checksY,
      col1.ref,
      col2.ref,
    ),
  );
}

/// Generate image: white noise.
Image genImageWhiteNoise(
  int width,
  int height,
  double factor,
) {
  return Image.fromRef(library.GenImageWhiteNoise(width, height, factor));
}

/// Generate image: cellular algorithm. Bigger tileSize means bigger cells.
Image genImageCellular(
  int width,
  int height,
  int tileSize,
) {
  return Image.fromRef(library.GenImageCellular(width, height, tileSize));
}
