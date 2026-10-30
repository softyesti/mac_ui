import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:get_it/get_it.dart';
import 'package:mac_ui/src/domain/theme/color_scheme.dart';
import 'package:mac_ui/src/domain/theme/scheme_contrast.dart';
import 'package:mac_ui/src/domain/theme/system_colors.dart';
import 'package:mac_ui/src/domain/theme/text/caption_text_theme.dart';
import 'package:mac_ui/src/domain/theme/text/headline_text_theme.dart';
import 'package:mac_ui/src/domain/theme/text/title_text_theme.dart';
import 'package:mac_ui/src/domain/theme/text_theme.dart';
import 'package:mac_ui/src/domain/theme/theme_colors.dart';
import 'package:mac_ui/src/domain/theme/theme_data.dart';
import 'package:mac_ui/src/repositories/theme/theme_repository.dart';

part 'text_theme.dart';
part 'theme_data.dart';
part 'accent_colors.dart';
part 'inherited_theme.dart';
part 'theme_controller.dart';

part 'schemes/system/system_color_scheme.dart';
part 'schemes/system/dark_system_color_scheme.dart';
part 'schemes/system/light_system_color_scheme.dart';
part 'schemes/system/contrast_dark_system_color_scheme.dart';
part 'schemes/system/contrast_light_system_color_scheme.dart';

part 'schemes/theme/theme_color_scheme.dart';
part 'schemes/theme/dark_theme_color_scheme.dart';
part 'schemes/theme/light_theme_color_scheme.dart';
part 'schemes/theme/contrast_dark_theme_color_scheme.dart';
part 'schemes/theme/contrast_light_theme_color_scheme.dart';

/// Applies a theme to descendant widgets.
class Theme extends StatefulWidget {
  /// Applies a theme to descendant widgets.
  const new({
    required this.child,
    super.key,
  });

  /// The widget below this theme in the tree.
  final Widget child;

  @override
  State<StatefulWidget> createState() => _ThemeState();

  /// The data from the closest [Theme]
  /// instance that encloses the given context.
  static ThemeData of(BuildContext context) {
    final data = _InheritedTheme.maybeOf(context)?.data;
    assert(data != null, '[ThemeData] not found in the context!');
    return data!;
  }

  /// The colors from the closest [Theme]
  /// instance that encloses the given context.
  static ThemeColors colorsOf(BuildContext context) {
    final data = _InheritedTheme.maybeOf(context)?.data;
    assert(data != null, '[ThemeColors] not found in the context!');
    return data!.colors;
  }

  /// The system colors from the closest [Theme]
  /// instance that encloses the given context.
  static SystemColors sysColorsOf(BuildContext context) {
    final data = _InheritedTheme.maybeOf(context)?.data;
    assert(data != null, '[SystemColors] not found in the context!');
    return data!.sysColors;
  }

  /// The text theme from the closest [Theme]
  /// instance that encloses the given context.
  static TextTheme textThemeOf(BuildContext context) {
    final data = _InheritedTheme.maybeOf(context)?.data;
    assert(data != null, '[TextTheme] not found in the context!');
    return data!.textTheme;
  }
}

class _ThemeState extends State<Theme> {
  late final ThemeController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ThemeController._(
      repository: GetIt.I.get(),
    ).._init();
  }

  @override
  void dispose() {
    unawaited(_controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: _controller,
    builder: (_, _) => _InheritedTheme(
      data: _controller._data,
      child: widget.child,
    ),
  );
}
