import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:mac_ui/src/domain/theme/scheme_contrast.dart';
import 'package:mac_ui/src/services/theme/theme_service.dart';
import 'package:system_theme/system_theme.dart';

/// Defines the ThemeServiceImpl.
class ThemeServiceImpl extends ThemeService {
  /// Defines the ThemeServiceImpl.
  new();

  late final StreamSubscription<SystemAccentColor> _accentSub;
  late final _accentController = StreamController<Color>.broadcast();
  late final _contrastController = StreamController<SchemeContrast>.broadcast();
  late final _brightnessController = StreamController<Brightness>.broadcast();
  late final PlatformDispatcher _dispatcher =
      SchedulerBinding.instance.platformDispatcher;

  late Color _accent;
  late SchemeContrast _contrast;
  late Brightness _brightness;

  @override
  Color get accent => _accent;

  @override
  SchemeContrast get contrast => _contrast;

  @override
  Brightness get brightness => _brightness;

  @override
  Stream<Color> get accentStream => _accentController.stream;

  @override
  Stream<SchemeContrast> get contrastStream => _contrastController.stream;

  @override
  Stream<Brightness> get brightnessStream => _brightnessController.stream;

  @override
  Future<ThemeServiceImpl> init() async {
    await SystemTheme.accentColor.load();

    _accent = SystemTheme.accentColor.accent;
    _accentSub = SystemTheme.onChange.listen(
      (accent) {
        _accent = accent.accent;
        _accentController.add(_accent);
      },
    );

    _brightness = _getBrightness();
    _dispatcher.onPlatformBrightnessChanged = () {
      _brightness = _getBrightness();
      _brightnessController.add(_brightness);
    };

    _contrast = _getContrast();
    _dispatcher.onAccessibilityFeaturesChanged = () {
      _contrast = _getContrast();
      _contrastController.add(_contrast);
    };

    return this;
  }

  @override
  Future<void> dispose() async {
    await _accentSub.cancel();
    await _accentController.close();
    await Future.wait([
      _contrastController.close(),
      _brightnessController.close(),
    ]);
  }

  SchemeContrast _getContrast() {
    final contrast = _dispatcher.accessibilityFeatures.highContrast;
    return switch (contrast) {
      true => .high,
      false => .normal,
    };
  }

  Brightness _getBrightness() => _dispatcher.platformBrightness;
}
