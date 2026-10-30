part of 'theme.dart';

/// Implements the resolved theme data.
class _ThemeData implements ThemeData {
  /// Creates resolved theme data.
  new({
    required this._textTheme,
    required this.colorScheme,
    required this.sysColorScheme,
  }) : assert(
         colorScheme.contrast == sysColorScheme.contrast,
         '[colorScheme] and [sysColorScheme] must have the same contrast.',
       ),
       assert(
         colorScheme.brightness == sysColorScheme.brightness,
         '[colorScheme] and [sysColorScheme] must have the same brightness.',
       );

  final TextTheme _textTheme;

  @override
  final ThemeColorScheme colorScheme;

  @override
  final SystemColorScheme sysColorScheme;

  @override
  ThemeColors get colors => colorScheme;

  @override
  SystemColors get sysColors => sysColorScheme;

  @override
  SchemeContrast get contrast => sysColorScheme.contrast;

  @override
  Brightness get brightness => colorScheme.brightness;

  @override
  TextTheme get textTheme => _textTheme;

  _ThemeData copyWith({
    ThemeColorScheme? colorScheme,
    SystemColorScheme? sysColorScheme,
  }) => .new(
    textTheme: textTheme,
    colorScheme: colorScheme ?? this.colorScheme,
    sysColorScheme: sysColorScheme ?? this.sysColorScheme,
  );
}
