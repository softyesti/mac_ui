part of 'text.dart';

/// Defines the typographic designs available for text rendering.
///
/// A text design determines the overall visual characteristics of a typeface,
/// independently of its size, weight, or other font properties.
enum TextDesign {
  /// Uses a standard sans-serif typeface.
  ///
  /// Intended for general interface text, providing
  /// a neutral and versatile appearance suitable for most content.
  regular('Inter'),

  /// Uses a rounded sans-serif typeface.
  ///
  /// Intended for interfaces that require a softer
  /// appearance, characterized by rounded letterforms and terminals.
  rounded('Nunito'),

  /// Uses a serif typeface.
  ///
  /// Intended for editorial content, reading experiences,
  /// and interfaces that benefit from traditional letterforms with serifs.
  serif('Literata'),

  /// Uses a monospaced typeface.
  ///
  /// Intended for source code, technical content,
  /// and data that benefits from consistent character widths.
  monospaced('JetBrains');

  new(this.fontFamily);

  /// The font family associated with this design.
  final String fontFamily;
}
