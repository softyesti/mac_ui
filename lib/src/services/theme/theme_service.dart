import 'package:flutter/widgets.dart';

import 'package:mac_ui/src/domain/theme/scheme_contrast.dart';
import 'package:mac_ui/src/services/service.dart';

/// Provides access to platform theme settings.
abstract class ThemeService extends Service {
  /// Provides access to platform theme settings.
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
