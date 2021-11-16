<img src="./logo/raylib-dart_256x256.png" width="256px">

# Raylib

[![plugin version](https://img.shields.io/pub/v/raylib?label=pub)](https://pub.dev/packages/raylib)
[![coverage report](https://gitlab.com/wolfenrain/dart-raylib/badges/main/coverage.svg)](https://gitlab.com/wolfenrain/dart-raylib/-/commits/main)
[![pipeline status](https://gitlab.com/wolfenrain/dart-raylib/badges/main/pipeline.svg)](https://gitlab.com/wolfenrain/dart-raylib/-/commits/main)
[![dependencies](https://img.shields.io/librariesio/release/pub/raylib?label=dependencies)](https://gitlab.com/wolfenrain/dart-raylib/-/blob/main/pubspec.yaml)
[![Examples](https://img.shields.io/badge/learn%20by-examples-0077b3.svg)](https://gitlab.com/wolfenrain/dart-raylib/tree/main/example)

Dart bindings for [raylib](https://raylib.com), a simple and easy-to-use library to enjoy videogames programming.

**Note**: This package was written for `raylib` version 4.x and higher, older versions are not supported.

---

<br>


## Usage

Add `raylib` as a dependency to your pubspec.yaml file ([what?](https://flutter.io/using-packages/)).

Importing `raylib`:

```dart
import 'package:raylib/raylib.dart';
```

By default the package will look for the `raylib` library in `<PROJECT_ROOT>/include` using the following file conventions:
- `libraylib.so` for Linux 
- `libraylib.dylib` for MacOS.

If your lib files are somewhere else or follow a different naming convention you can specify that in your `pubspec.yaml`:

```yaml
raylib:
  platform: 
    linux: include/libraylib.so
    macos: include/libraylib.so
```

See the [example](https://gitlab.com/wolfenrain/dart-raylib/-/tree/main/example/lib) directory for more examples.

## Development

### Linux

You need to have both `make` and `git` installed: 

```sh
sudo apt install build-essential git
```

After that you can check out the submodules:

```sh
git submodule update --init --recursive
```

With the submodules downloaded you can start compiling `raylib`:

```sh
cd vendor/raylib/src
make PLATFORM=PLATFORM_DESKTOP RAYLIB_LIBTYPE=SHARED
```

Then copy the compiled library to the example folder:

```sh
cp ../libraylib.so.4.0.0 ../../../example/include/libraylib.so
```
