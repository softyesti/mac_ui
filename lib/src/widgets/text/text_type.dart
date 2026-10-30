part of 'text.dart';

/// Defines the available semantic text styles.
///
/// Intended for view titles, section headings, and subordinate headings.
enum TextType {
  /// The standard style for primary textual content.
  ///
  /// Intended for paragraphs, descriptions, and general interface text.
  body,

  /// A supporting text style with additional visual prominence.
  ///
  /// Intended for short descriptive text, secondary callouts,
  /// and content that requires more emphasis than regular supporting text.
  callout,

  /// A small text style for supplementary information.
  ///
  /// Commonly used for footnotes, secondary details, and
  /// additional context that should remain readable without
  /// competing with primary content.
  footnote,

  /// Intended for captions, annotations, and short descriptive
  /// labels associated with interface elements or content.
  caption,

  /// Intended for compact supplementary
  /// information and less prominent annotations.
  caption2,

  /// Commonly used for section headings and emphasized interface labels.
  headline,

  /// Intended for supporting headings and supplementary
  /// descriptions associated with primary content.
  subHeadline,

  /// The primary title style.
  ///
  /// Intended for the main heading of a view or content hierarchy.
  title,

  /// A secondary title style.
  ///
  /// Intended for headings subordinate to the primary title.
  title2,

  /// A tertiary title style.
  ///
  /// Intended for smaller headings within a view or content section.
  title3,

  /// A large title used to identify a prominent view or content section.
  largeTitle,

  /// The first level of extra-large titles.
  ///
  /// Intended for prominent headings that establish
  /// the primary hierarchy of a view.
  xLargeTitle,

  /// The second level of extra-large titles.
  xLargeTitle2,
}
