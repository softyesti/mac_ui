part of '../../theme.dart';

/// Provides _NormalDarkColorScheme implementation.
final class _NormalDarkColorScheme extends ThemeColorScheme {
  /// Provides _NormalDarkColorScheme implementation.
  const new(
    super.accent,
  ) : super(contrast: .normal, brightness: .dark);

  @override
  ContentColors get content => .new(
    alternating: const Color(0xFF282828),
    selected: .new(
      normal: accent,
      unemphasized: const Color(0xFF000000),
    ),
  );

  @override
  ControlColors get control => .new(
    normal: .new(
      accent: accent,
      text: const Color(0xFF000000),
      tint: const Color(0xFF000000),
      focus: const Color(0xFF000000),
      color: const Color(0xFF000000),
      background: const Color(0xFF000000),
      disabledText: const Color(0xFF000000),
    ),
    selected: const .new(
      text: Color(0xFF000000),
      color: Color(0xFF000000),
      altText: Color(0xFF000000),
    ),
  );

  @override
  Color get find => const Color(0xFF000000);

  @override
  Color get grid => const Color(0xFF000000);

  @override
  Color get highlight => const Color(0xFF000000);

  @override
  LabelColors get label => const .new(
    primary: Color(0xFF000000),
    secondary: Color(0xFF000000),
    tertiary: Color(0xFF000000),
    quaternary: Color(0xFF000000),
  );

  @override
  Color get link => const Color(0xFF000000);

  @override
  Color get placeholder => const Color(0xFF000000);

  @override
  Color get selMenuItem => const Color(0xFF000000);

  @override
  Color get separator => const Color(0xFF000000);

  @override
  Color get shadow => const Color(0xFF000000);

  @override
  TextColors get text => const .new(
    normal: .new(
      foreground: Color(0xFFDEDEDE),
      background: Color(0x00FFFFFF),
    ),
    selected: .new(
      normal: Color(0xFF000000),
      unemphasized: Color(0xFF000000),
    ),
  );

  @override
  Color get underPage => const Color(0xFF000000);

  @override
  WindowColors get window => const .new(
    frameText: Color(0xFFE9E9E9),
    background: Color(0xFF1E1E1E),
  );
}
