part of '../theme_colors.dart';

/// The colors used for a window frame and its background.
final class WindowColors {
  /// The colors used for a window frame and its background.
  const new({
    required this.frameText,
    required this.background,
  });

  /// The text in the window’s title bar area.
  final Color frameText;

  /// The background of a window.
  final Color background;
}
