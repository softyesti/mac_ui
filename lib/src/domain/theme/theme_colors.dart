import 'package:flutter/widgets.dart';

part 'colors/text_colors.dart';
part 'colors/label_colors.dart';
part 'colors/window_colors.dart';
part 'colors/control_colors.dart';
part 'colors/content_colors.dart';

/// Semantic color tokens, matching the dynamic system
/// color names defined by Apple's Human Interface Guidelines.
abstract class ThemeColors {
  /// Creates a macOS color palette.
  const new({
    required this.find,
    required this.link,
    required this.grid,
    required this.text,
    required this.label,
    required this.shadow,
    required this.window,
    required this.control,
    required this.content,
    required this.separator,
    required this.underPage,
    required this.highlight,
    required this.placeholder,
    required this.selMenuItem,
  });

  /// The color of a find indicator.
  final Color find;

  /// A link to other content.
  final Color link;

  /// The grid lines of an interface element, such as a table.
  final Color grid;

  /// The colors used for text in a document and selected-text states.
  final TextColors text;

  /// The semantic colors for labels in primary, secondary, tertiary, and
  /// quaternary content.
  final LabelColors label;

  /// The virtual shadow cast by a raised object onscreen.
  final Color shadow;

  /// The colors used for the window frame and window background.
  final WindowColors window;

  /// The colors used for standard and selected controls.
  final ControlColors control;

  /// The colors used for content backgrounds, including alternating and
  /// selected rows.
  final ContentColors content;

  /// A separator between different sections of [content].
  final Color separator;

  /// The background behind a document’s [content].
  final Color underPage;

  /// The virtual light source onscreen.
  final Color highlight;

  /// A placeholder string in a [control] or text view.
  final Color placeholder;

  /// The text of a selected menu.
  final Color selMenuItem;
}
