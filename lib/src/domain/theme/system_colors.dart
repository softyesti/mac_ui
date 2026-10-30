import 'package:flutter/widgets.dart';

/// Pre-defined system colors.
abstract class SystemColors {
  /// Pre-defined system colors.
  const new({
    required this.red,
    required this.orange,
    required this.yellow,
    required this.green,
    required this.mint,
    required this.teal,
    required this.cyan,
    required this.blue,
    required this.indigo,
    required this.purple,
    required this.pink,
    required this.brown,
    required this.gray,
    required this.white,
    required this.black,
  });

  /// Red color.
  final Color red;

  /// Orange color.
  final Color orange;

  /// Yellow color.
  final Color yellow;

  /// Green color.
  final Color green;

  /// Mint color.
  final Color mint;

  /// Teal color.
  final Color teal;

  /// Cyan color.
  final Color cyan;

  /// Blue color.
  final Color blue;

  /// Indigo color.
  final Color indigo;

  /// Purple color.
  final Color purple;

  /// Pink color.
  final Color pink;

  /// Brown color.
  final Color brown;

  /// Gray color.
  final Color gray;

  /// White color.
  final Color white;

  /// Black color.
  final Color black;
}
