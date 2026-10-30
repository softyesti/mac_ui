part of '../../theme.dart';

/// Defines the system semantic color scheme.
sealed class SystemColorScheme extends ColorScheme implements SystemColors {
  /// Defines the system semantic color scheme.
  const new({
    required super.contrast,
    required super.brightness,
  });

  /// Creates the dark system color scheme.
  const factory dark() = _NormalDarkSysColorScheme;

  /// Creates the light system color scheme.
  const factory light() = _NormalLightSysColorScheme;

  /// Creates the high-contrast dark system color scheme.
  const factory darkContrast() = _ContrastDarkSysColorScheme;

  /// Creates the high-contrast light system color scheme.
  const factory lightContrast() = _ContrastLightSysColorScheme;
}
