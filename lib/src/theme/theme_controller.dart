part of 'theme.dart';

/// Coordinates theme values with their platform streams.
class ThemeController extends ChangeNotifier {
  new _({required this._repository});

  final ThemeRepository _repository;

  late Color _accent;
  late SchemeContrast _contrast;
  late Brightness _brightness;

  late _ThemeData _data;
  late _ThemeData _dark;
  late _ThemeData _light;
  late _ThemeData _darkContrast;
  late _ThemeData _lightContrast;

  late final StreamSubscription<Color> _accentSub;
  late final StreamSubscription<SchemeContrast> _contrastSub;
  late final StreamSubscription<Brightness> _brightnessSub;

  @override
  Future<void> dispose() async {
    await Future.wait([
      _accentSub.cancel(),
      _contrastSub.cancel(),
      _brightnessSub.cancel(),
    ]);

    super.dispose();
  }

  void _init() {
    _accent = _repository.accent;
    _contrast = _repository.contrast;
    _brightness = _repository.brightness;
    _setData();
    _updateData();

    _accentSub = _repository.accentStream.listen((accent) {
      _accent = accent;
      _updateAccent();
      _updateData();
      notifyListeners();
    });

    _contrastSub = _repository.contrastStream.listen((contrast) {
      _contrast = contrast;
      _updateData();
      notifyListeners();
    });

    _brightnessSub = _repository.brightnessStream.listen((brightness) {
      _brightness = brightness;
      _updateData();
      notifyListeners();
    });
  }

  void _setData() {
    _dark = .new(
      textTheme: const _TextTheme(),
      colorScheme: .dark(_accent),
      sysColorScheme: const .dark(),
    );

    _light = .new(
      textTheme: const _TextTheme(),
      colorScheme: .light(_accent),
      sysColorScheme: const .light(),
    );

    _darkContrast = .new(
      textTheme: const _TextTheme(),
      colorScheme: .darkContrast(_accent),
      sysColorScheme: const .darkContrast(),
    );

    _lightContrast = .new(
      textTheme: const _TextTheme(),
      colorScheme: .lightContrast(_accent),
      sysColorScheme: const .lightContrast(),
    );
  }

  void _updateAccent() {
    _dark = _dark.copyWith(
      colorScheme: .dark(_accent),
    );

    _light = _light.copyWith(
      colorScheme: .light(_accent),
    );

    _darkContrast = _darkContrast.copyWith(
      colorScheme: .darkContrast(_accent),
    );

    _lightContrast = _lightContrast.copyWith(
      colorScheme: .lightContrast(_accent),
    );
  }

  void _updateData() => _data = switch (_brightness) {
    .dark => _contrast == .high ? _darkContrast : _dark,
    .light => _contrast == .high ? _lightContrast : _light,
  };
}
