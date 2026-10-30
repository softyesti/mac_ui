part of '../theme_colors.dart';

/// The colors used for content surfaces,
/// including alternating rows and selected content.
final class ContentColors {
  /// The colors used for content surfaces,
  /// including alternating rows and selected content.
  const new({
    required this.alternating,
    required this.selected,
  });

  /// The backgrounds of alternating rows or
  /// columns in a list, table, or collection view.
  final Color alternating;

  /// The background for selected content in a key window or view.
  final SelContentBgColors selected;
}

/// The selected-content background colors for key and non-key windows.
final class SelContentBgColors {
  /// The selected-content background colors for key and non-key windows.
  const new({
    required this.normal,
    required this.unemphasized,
  });

  /// The background for selected content in a key window or view.
  final Color normal;

  /// The selected content in a non-key window or view.
  final Color unemphasized;
}
