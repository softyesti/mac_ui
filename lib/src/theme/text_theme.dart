part of 'theme.dart';

class _TextTheme implements TextTheme {
  const new();

  static const String _package = 'mac_ui';
  static const String _fontFamily = 'Inter';
  static const TextOverflow _overflow = .ellipsis;

  @override
  TextStyle get body => const .new(
    fontSize: 13,
    fontWeight: .w400,
    package: _package,
    overflow: _overflow,
    fontFamily: _fontFamily,
  );

  @override
  TextStyle get callout => const .new(
    fontSize: 13,
    fontWeight: .w400,
    package: _package,
    overflow: _overflow,
    fontFamily: _fontFamily,
  );

  @override
  CaptionTextTheme get caption => const .new(
    c1: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
    c2: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
  );

  @override
  TextStyle get footnote => const .new(
    fontSize: 13,
    fontWeight: .w400,
    package: _package,
    overflow: _overflow,
    fontFamily: _fontFamily,
  );

  @override
  HeadlineTextTheme get headline => const .new(
    sub: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
    regular: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
  );

  @override
  TitleTextTheme get title => const .new(
    t1: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
    t2: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
    t3: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
    large: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
    xLarge1: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
    xLarge2: .new(
      fontSize: 13,
      fontWeight: .w400,
      package: _package,
      overflow: _overflow,
      fontFamily: _fontFamily,
    ),
  );
}
