part of '../../theme.dart';

/// Defines the application's semantic color scheme.
sealed class ThemeColorScheme extends ColorScheme implements ThemeColors {
  /// Defines the application's semantic color scheme.
  const new(
    this.accent, {
    required super.contrast,
    required super.brightness,
  });

  /// Creates the dark color scheme.
  const factory dark(Color accent) = _NormalDarkColorScheme;

  /// Creates the light color scheme.
  const factory light(Color accent) = _NormalLightColorScheme;

  /// Creates the high-contrast dark color scheme.
  const factory darkContrast(Color accent) = _ContrastDarkColorScheme;

  /// Creates the high-contrast light color scheme.
  const factory lightContrast(Color accent) = _ContrastLightColorScheme;

  /// The accent color used by the scheme.
  final Color accent;
}
