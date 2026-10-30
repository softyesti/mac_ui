part of 'theme.dart';

class _InheritedTheme extends InheritedWidget {
  const new({
    required this.data,
    required super.child,
  });

  final ThemeData data;

  @override
  bool updateShouldNotify(
    covariant _InheritedTheme old,
  ) => data != old.data;

  static _InheritedTheme? maybeOf(
    BuildContext context,
  ) => context.dependOnInheritedWidgetOfExactType<_InheritedTheme>();
}
