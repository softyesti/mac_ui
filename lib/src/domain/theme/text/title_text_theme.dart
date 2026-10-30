import 'package:flutter/widgets.dart';

/// Defines the hierarchy of title styles.
///
/// Intended for view titles, section headings, and subordinate headings.
final class TitleTextTheme {
  /// Defines the hierarchy of title styles.
  ///
  /// Intended for view titles, section headings, and subordinate headings.
  const new({
    required this.t1,
    required this.t2,
    required this.t3,
    required this.large,
    required this.xLarge1,
    required this.xLarge2,
  });

  /// The primary title style.
  ///
  /// Intended for the main heading of a view or content hierarchy.
  final TextStyle t1;

  /// A secondary title style.
  ///
  /// Intended for headings subordinate to the primary title.
  final TextStyle t2;

  /// A tertiary title style.
  ///
  /// Intended for smaller headings within a view or content section.
  final TextStyle t3;

  /// A large title used to identify a prominent view or content section.
  final TextStyle large;

  /// The first level of extra-large titles.
  ///
  /// Intended for prominent headings that
  /// establish the primary hierarchy of a view.
  final TextStyle xLarge1;

  /// The second level of extra-large titles.
  final TextStyle xLarge2;
}
