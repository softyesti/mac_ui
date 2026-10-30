import 'package:flutter/widgets.dart';

import 'package:mac_ui/src/domain/theme/color_scheme.dart';
import 'package:mac_ui/src/domain/theme/scheme_contrast.dart';
import 'package:mac_ui/src/domain/theme/system_colors.dart';
import 'package:mac_ui/src/domain/theme/text_theme.dart';
import 'package:mac_ui/src/domain/theme/theme_colors.dart';

/// Defines the overall visual appearance.
abstract class ThemeData {
  /// Defines the overall visual appearance.
  const new({
    required this.colorScheme,
    required this.sysColorScheme,
    required this.textTheme,
  });

  /// The semantic application color scheme.
  final ColorScheme colorScheme;

  /// The system color scheme.
  final ColorScheme sysColorScheme;

  /// The semantic text styles.
  final TextTheme textTheme;

  /// The semantic theme colors.
  ThemeColors get colors;

  /// The semantic system colors.
  SystemColors get sysColors;

  /// The display contrast setting.
  SchemeContrast get contrast;

  /// The platform brightness setting.
  Brightness get brightness;
}
