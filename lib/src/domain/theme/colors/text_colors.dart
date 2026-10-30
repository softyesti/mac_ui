part of '../theme_colors.dart';

/// The colors for standard and selected text in a document.
final class TextColors {
  /// The colors for standard and selected text in a document.
  const new({
    required this.normal,
    required this.selected,
  });

  /// The colors used for text in a document.
  final NormalTextColor normal;

  /// The colors used for selected text.
  final SelectedTextColor selected;
}

/// The text and background colors for plain document text.
class NormalTextColor {
  /// The text and background colors for plain document text.
  const new({
    required this.foreground,
    required this.background,
  });

  /// The text in a document.
  final Color foreground;

  /// The background color behind text.
  final Color background;
}

/// The colors for selected text in key and non-key windows.
class SelectedTextColor {
  /// The colors for selected text in key and non-key windows.
  const new({
    required this.normal,
    required this.unemphasized,
  });

  /// The color for selected text in a key window or view.
  final Color normal;

  /// Selected text in a non-key window or view.
  final Color unemphasized;
}

/// The colors for selected text in a key window.
class NormalSelTextColor {
  /// The colors for selected text in a key window.
  const new({
    required this.foreground,
    required this.background,
  });

  /// The color for selected text.
  final Color foreground;

  /// The background of selected text.
  final Color background;
}

/// The colors for selected text in a non-key window.
class UnemphasizedSelTextColor {
  /// The colors for selected text in a non-key window.
  const new({
    required this.foreground,
    required this.background,
  });

  /// Selected text in a non-key window or view.
  final Color foreground;

  /// A background for selected text in a non-key window or view.
  final Color background;
}
