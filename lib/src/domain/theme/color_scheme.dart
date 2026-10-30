import 'package:flutter/widgets.dart';

import 'package:mac_ui/src/domain/theme/scheme_contrast.dart';

/// Defines the base semantic color scheme.
abstract class ColorScheme {
  /// Defines the base semantic color scheme.
  const new({
    required this.contrast,
    required this.brightness,
  });

  /// The display contrast setting.
  final SchemeContrast contrast;

  /// The platform brightness setting.
  final Brightness brightness;
}
