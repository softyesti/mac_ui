import 'package:flutter/widgets.dart';

import 'package:mac_ui/src/domain/theme/text/caption_text_theme.dart';
import 'package:mac_ui/src/domain/theme/text/headline_text_theme.dart';
import 'package:mac_ui/src/domain/theme/text/title_text_theme.dart';

/// Defines the semantic typography styles.
///
/// A text theme provides a consistent typographic hierarchy for
/// displaying content, headings, captions, and supplementary information.
abstract class TextTheme {
  /// Defines the semantic typography styles.
  ///
  /// A text theme provides a consistent typographic hierarchy for
  /// displaying content, headings, captions, and supplementary information.
  const new({
    required this.body,
    required this.callout,
    required this.footnote,
    required this.title,
    required this.caption,
    required this.headline,
  });

  /// The standard style for primary textual content.
  ///
  /// Intended for paragraphs, descriptions, and general interface text.
  final TextStyle body;

  /// A supporting text style with additional visual prominence.
  ///
  /// Intended for short descriptive text, secondary callouts,
  /// and content that requires more emphasis than regular supporting text.
  final TextStyle callout;

  /// A small text style for supplementary information.
  ///
  /// Commonly used for footnotes, secondary details, and
  /// additional context that should remain readable without
  /// competing with primary content.
  final TextStyle footnote;

  /// Defines the hierarchy of title styles.
  ///
  /// Intended for view titles, section headings, and subordinate headings.
  final TitleTextTheme title;

  /// Defines the hierarchy of caption styles.
  ///
  /// Intended for annotations, supplementary descriptions,
  /// and compact labels associated with interface elements or content.
  final CaptionTextTheme caption;

  /// Defines the hierarchy of headline styles.
  ///
  /// Intended for prominent labels, section headings,
  /// and emphasized interface content.
  final HeadlineTextTheme headline;
}
