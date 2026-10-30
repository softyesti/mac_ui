import 'package:flutter/widgets.dart';
import 'package:mac_ui/src/theme/theme.dart';

part 'widgets_app.dart';

/// MacUI main application widget.
class MacUIApp extends StatelessWidget {
  /// MacUI main application widget.
  const new({
    required this.title,
    required this.routerConfig,
    this.locale = const Locale('en', 'US'),
    this.debugShowCheckedModeBanner = false,
    super.key,
  });

  /// A one-line description used by the
  /// device to identify the app for the user.
  final String title;

  /// The initial locale for this app's
  /// [Localizations] widget is based on this value.
  final Locale locale;

  /// Turns on a little "DEBUG" banner in debug mode to indicate that the app
  /// is in debug mode. This is on by default (in debug mode), to turn it off,
  /// set the constructor argument to false. In release mode this has no effect.
  final bool debugShowCheckedModeBanner;

  /// An object to configure the underlying [Router].
  final RouterConfig<Object>? routerConfig;

  @override
  Widget build(BuildContext context) => Theme(
    child: Directionality(
      textDirection: .ltr,
      child: _WidgetsApp(
        title: title,
        locale: locale,
        routerConfig: routerConfig,
        debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      ),
    ),
  );
}
