import 'package:flutter/widgets.dart';

/// Defines the semantic font weights available for text rendering.
///
/// Font weights determine the visual thickness of a typeface's glyphs,
/// ranging from extremely thin strokes to very heavy strokes.
enum TextWeight {
  /// The thinnest available font weight.
  ///
  /// Intended for extremely delicate typography and subtle visual emphasis.
  ultraLight(.w100),

  /// A very thin font weight.
  ///
  /// Intended for lightweight typography with minimal visual prominence.
  thin(.w200),

  /// A light font weight.
  ///
  /// Intended for subtle emphasis while maintaining a lightweight appearance.
  light(.w300),

  /// The standard font weight.
  ///
  /// Intended for regular interface text and general content.
  regular(.w400),

  /// A moderately emphasized font weight.
  ///
  /// Intended for secondary emphasis and interface elements that require
  /// slightly more prominence than regular text.
  medium(.w500),

  /// A semibold font weight.
  ///
  /// Intended for headings, labels, and emphasized content that requires
  /// stronger visual prominence without appearing fully bold.
  semibold(.w600),

  /// A bold font weight.
  ///
  /// Intended for prominent headings, important labels, and strong emphasis.
  bold(.w700),

  /// A very heavy font weight.
  ///
  /// Intended for highly prominent typography and strong visual emphasis.
  heavy(.w800),

  /// The heaviest standard font weight.
  ///
  /// Intended for maximum typographic prominence and exceptionally bold text.
  black(.w900);

  new(this.fontWeight);

  /// The font weight associated with.
  final FontWeight fontWeight;
}
