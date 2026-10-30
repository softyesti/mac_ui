part of '../../theme.dart';

/// Provides _NormalLightColorScheme implementation.
final class _NormalLightColorScheme extends ThemeColorScheme {
  /// Provides _NormalLightColorScheme implementation.
  const new(
    super.accent,
  ) : super(contrast: .normal, brightness: .light);

  @override
  ContentColors get content => const .new(
    alternating: Color(0xFFFFFFFF),
    selected: .new(
      normal: Color(0xFFFFFFFF),
      unemphasized: Color(0xFFFFFFFF),
    ),
  );

  @override
  ControlColors get control => .new(
    normal: .new(
      accent: accent,
      text: const Color(0xFFFFFFFF),
      tint: const Color(0xFFFFFFFF),
      focus: const Color(0xFFFFFFFF),
      color: const Color(0xFFFFFFFF),
      background: const Color(0xFFFFFFFF),
      disabledText: const Color(0xFFFFFFFF),
    ),
    selected: const .new(
      text: Color(0xFFFFFFFF),
      color: Color(0xFFFFFFFF),
      altText: Color(0xFFFFFFFF),
    ),
  );

  @override
  Color get find => const Color(0xFFFFFFFF);

  @override
  Color get grid => const Color(0xFFFFFFFF);

  @override
  Color get highlight => const Color(0xFFFFFFFF);

  @override
  LabelColors get label => const .new(
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xFFFFFFFF),
    tertiary: Color(0xFFFFFFFF),
    quaternary: Color(0xFFFFFFFF),
  );

  @override
  Color get link => const Color(0xFFFFFFFF);

  @override
  Color get placeholder => const Color(0xFFFFFFFF);

  @override
  Color get selMenuItem => const Color(0xFFFFFFFF);

  @override
  Color get separator => const Color(0xFFFFFFFF);

  @override
  Color get shadow => const Color(0xFFFFFFFF);

  @override
  TextColors get text => const .new(
    normal: .new(
      foreground: Color(0xFFFFFFFF),
      background: Color(0xFFFFFFFF),
    ),
    selected: .new(
      normal: Color(0xFFFFFFFF),
      unemphasized: Color(0xFFFFFFFF),
    ),
  );

  @override
  Color get underPage => const Color(0xFFFFFFFF);

  @override
  WindowColors get window => const .new(
    frameText: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
  );
}
