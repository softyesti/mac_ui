import 'package:flutter/widgets.dart';

/// Defines the hierarchy of caption styles.
///
/// Intended for annotations, supplementary descriptions,
/// and compact labels associated with interface elements or content.
final class CaptionTextTheme {
  /// Defines the hierarchy of caption styles.
  ///
  /// Intended for annotations, supplementary descriptions,
  /// and compact labels associated with interface elements or content.
  const new({
    required this.c1,
    required this.c2,
  });

  /// The primary caption style.
  ///
  /// Intended for captions, annotations, and short
  /// descriptive labels associated with interface elements or content.
  final TextStyle c1;

  /// The secondary caption style.
  ///
  /// Intended for compact supplementary
  /// information and less prominent annotations.
  final TextStyle c2;
}
