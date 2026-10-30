part of 'app.dart';

class _WidgetsApp extends StatelessWidget {
  const new({
    required this.title,
    required this.locale,
    required this.routerConfig,
    required this.debugShowCheckedModeBanner,
  });

  /// A one-line description used by the
  /// device to identify the app for the user.
  final String title;

  /// The initial locale for this app's
  /// [Localizations] widget is based on this value.
  final Locale locale;

  /// An object to configure the underlying [Router].
  final RouterConfig<Object>? routerConfig;

  /// Turns on a little "DEBUG" banner in debug mode to indicate that the app
  /// is in debug mode. This is on by default (in debug mode), to turn it off,
  /// set the constructor argument to false. In release mode this has no effect.
  final bool debugShowCheckedModeBanner;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WidgetsApp.router(
      title: title,
      locale: locale,
      routerConfig: routerConfig,
      textStyle: theme.textTheme.body,
      color: theme.colors.control.normal.accent,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
    );
  }
}
