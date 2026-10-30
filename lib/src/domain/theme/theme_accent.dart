import 'package:flutter/widgets.dart';

/// Defines an accent color for the theme.
sealed class ThemeAccent {
  /// Defines an accent color for the theme.
  const new();

  /// Uses the system accent color.
  const factory system() = SystemAccentColor;

  /// Uses a fixed accent color.
  const factory static(Color color) = StaticAccentColor;
}

/// Represents the platform system accent color.
final class SystemAccentColor extends ThemeAccent {
  /// Represents the platform system accent color.
  const new();
}

/// Represents a fixed accent color.
final class StaticAccentColor extends ThemeAccent {
  /// Creates an accent color with the given [color].
  const new(this.color);

  /// The fixed accent color.
  final Color color;
}
