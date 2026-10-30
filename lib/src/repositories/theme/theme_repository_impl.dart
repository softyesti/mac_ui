import 'package:flutter/widgets.dart';

import 'package:mac_ui/src/domain/theme/scheme_contrast.dart';
import 'package:mac_ui/src/repositories/theme/theme_repository.dart';
import 'package:mac_ui/src/services/theme/theme_service.dart';

/// Defines the ThemeRepositoryImpl.
class ThemeRepositoryImpl extends ThemeRepository {
  /// Defines the ThemeRepositoryImpl.
  const new({required this._themeService});

  final ThemeService _themeService;

  @override
  Color get accent => _themeService.accent;

  @override
  SchemeContrast get contrast => _themeService.contrast;

  @override
  Brightness get brightness => _themeService.brightness;

  @override
  Stream<Color> get accentStream => _themeService.accentStream;

  @override
  Stream<SchemeContrast> get contrastStream => _themeService.contrastStream;

  @override
  Stream<Brightness> get brightnessStream => _themeService.brightnessStream;

  @override
  Future<void> dispose() => _themeService.dispose();
}
