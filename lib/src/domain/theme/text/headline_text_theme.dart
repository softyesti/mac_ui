import 'package:flutter/widgets.dart';

/// Defines the hierarchy of headline styles.
///
/// Intended for prominent labels, section headings,
/// and emphasized interface content.
final class HeadlineTextTheme {
  /// Defines the hierarchy of headline styles.
  ///
  /// Intended for prominent labels, section headings,
  /// and emphasized interface content.
  const new({
    required this.sub,
    required this.regular,
  });

  /// A secondary heading style.
  ///
  /// Intended for supporting headings and
  /// supplementary descriptions associated with primary content.
  final TextStyle sub;

  /// A prominent text style used to emphasize content.
  ///
  /// Commonly used for section headings and emphasized interface labels.
  final TextStyle regular;
}
