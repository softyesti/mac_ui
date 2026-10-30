part of '../theme_colors.dart';

/// The semantic colors for labels in content.
final class LabelColors {
  /// The semantic colors for labels in content.
  const new({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.quaternary,
  });

  /// The text of a label containing primary content.
  final Color primary;

  /// The text of a label of lesser importance
  /// than a primary label, such as a label used
  /// to represent a subheading or additional information.
  final Color secondary;

  /// The text of a label of lesser importance than a secondary label.
  final Color tertiary;

  /// The text of a label of lesser importance
  /// than a tertiary label, such as watermark text.
  final Color quaternary;
}
