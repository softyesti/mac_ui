import 'package:flutter/widgets.dart';

import 'package:mac_ui/src/domain/theme/scheme_contrast.dart';
import 'package:mac_ui/src/repositories/repository.dart';

/// Provides theme values and their updates.
abstract class ThemeRepository extends Repository {
  /// Provides theme values and their updates.
  const new();

  /// The current system accent color.
  Color get accent;

  /// The current contrast setting.
  SchemeContrast get contrast;

  /// The current platform brightness.
  Brightness get brightness;

  /// A stream of accent color changes.
  Stream<Color> get accentStream;

  /// A stream of contrast setting changes.
  Stream<SchemeContrast> get contrastStream;

  /// A stream of platform brightness changes.
  Stream<Brightness> get brightnessStream;
}
