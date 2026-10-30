part of '../theme_colors.dart';

/// The colors used for standard and selected control states.
final class ControlColors {
  /// The colors used for standard and selected control states.
  const new({
    required this.normal,
    required this.selected,
  });

  /// The colors used when a control is in its normal state.
  final NormalControlColors normal;

  /// The colors used when a control is selected.
  final SelControlColors selected;
}

/// The colors used when a control is in its normal state.
final class NormalControlColors {
  /// The colors used when a control is in its normal state.
  const new({
    required this.tint,
    required this.text,
    required this.color,
    required this.focus,
    required this.accent,
    required this.background,
    required this.disabledText,
  });

  /// The system-defined control tint.
  final Color tint;

  /// The text of a control that is available.
  final Color text;

  /// The surface of a control.
  final Color color;

  /// The ring that appears around the currently focused
  /// control when using the keyboard for interface navigation.
  final Color focus;

  /// The accent color people select in System Settings.
  final Color accent;

  /// The background of a large interface element, such as a browser or table.
  final Color background;

  /// The text of a control that’s unavailable.
  final Color disabledText;
}

/// The colors used when a control is selected.
final class SelControlColors {
  /// The colors used when a control is selected.
  const new({
    required this.text,
    required this.color,
    required this.altText,
  });

  /// The text of a selected control.
  final Color text;

  /// The surface of a selected control.
  final Color color;

  /// The text on a selected surface in a list or table.
  final Color altText;
}
