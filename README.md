# Raylib
[![plugin version](https://img.shields.io/pub/v/raylib?label=pub)](https://pub.dev/packages/raylib)
[![coverage report](https://gitlab.com/wolfenrain/dart-raylib/badges/main/coverage.svg)](https://gitlab.com/wolfenrain/dart-raylib/-/commits/main)
[![pipeline status](https://gitlab.com/wolfenrain/dart-raylib/badges/main/pipeline.svg)](https://gitlab.com/wolfenrain/dart-raylib/-/commits/main)
[![dependencies](https://img.shields.io/librariesio/release/pub/raylib?label=dependencies)](https://gitlab.com/wolfenrain/dart-raylib/-/blob/main/pubspec.yaml)



Dart bindings for [raylib](https://raylib.com), a simple and easy-to-use library to enjoy videogames programming.

## Usage

Add `raylib` as a dependency to your pubspec.yaml file ([what?](https://flutter.io/using-packages/)).

Importing `raylib`:

```dart
import 'package:raylib/raylib.dart';
```

By default the package will look for the `raylib` library in `<PROJECT_ROOT>/include` using the following file conventions:
- `libraylib.so` for Linux and MacOS.

If your lib files are somewhere else or follow a different naming convention you can specify that in your `pubspec.yaml`:

```yaml
raylib:
  platform: 
    linux: include/libraylib.so
    macos: include/libraylib.so
```

## Development

### Linux

You need to have `make` and `git` installed: 

```sh
sudo apt install build-essential git
```

After that you can check out the submodules:

```sh
git submodule update --init --recursive
```

After you have downloaded the submodules you can compile `raylib`:

```sh
cd vendor/raylib/src
make PLATFORM=PLATFORM_DESKTOP RAYLIB_LIBTYPE=SHARED
```

```sh
cp ../libraylib.so.4.0.0 ../../../example/include/libraylib.so
```
