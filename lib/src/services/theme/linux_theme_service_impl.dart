import 'dart:async';

import 'package:dbus/dbus.dart';
import 'package:flutter/widgets.dart';
import 'package:mac_ui/src/domain/theme/scheme_contrast.dart';
import 'package:mac_ui/src/services/theme/theme_service.dart';

/// Defines the LinuxThemeServiceImpl.
class LinuxThemeServiceImpl extends ThemeService {
  /// Defines the LinuxThemeServiceImpl.
  new();

  final _client = DBusClient.session();
  late final DBusRemoteObject _object;
  late final StreamSubscription<DBusSignal> _signalSub;
  late final _accentController = StreamController<Color>.broadcast();
  late final _contrastController = StreamController<SchemeContrast>.broadcast();
  late final _brightnessController = StreamController<Brightness>.broadcast();

  late Color _accent;
  late SchemeContrast _contrast;
  late Brightness _brightness;

  static const _contrastKey = 'contrast';
  static const _accentKey = 'accent-color';
  static const _brightnessKey = 'color-scheme';

  static const _name = 'SettingChanged';
  static const _namespace = 'org.freedesktop.appearance';
  static const _path = '/org/freedesktop/portal/desktop';
  static const _service = 'org.freedesktop.portal.Desktop';
  static const _interface = 'org.freedesktop.portal.Settings';

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
  Future<LinuxThemeServiceImpl> init() async {
    _object = DBusRemoteObject(_client, name: _service, path: .new(_path));
    final signals = DBusRemoteObjectSignalStream(
      name: _name,
      object: _object,
      interface: _interface,
      signature: .new('ssv'),
    );

    final values = await Future.wait([
      _read(_accentKey),
      _read(_contrastKey),
      _read(_brightnessKey),
    ]);

    _setAccent(values[0]);
    _setContrast(values[1]);
    _setBrightness(values[2]);
    _signalSub = signals.listen(_onSignal);

    return this;
  }

  @override
  Future<void> dispose() async {
    await _signalSub.cancel();
    await _client.close();
    await Future.wait([
      _accentController.close(),
      _brightnessController.close(),
      _contrastController.close(),
    ]);
  }

  void _onSignal(DBusSignal signal) {
    final values = signal.values;
    if (values.length != 3) return;

    final namespace = values[0].toNative();
    if (namespace != _namespace) return;

    final key = values[1].asString();
    final value = values[2];

    if (key == _accentKey) _setAccent(value);
    if (key == _contrastKey) _setContrast(value);
    if (key == _brightnessKey) _setBrightness(value);
  }

  Future<DBusValue> _read(String key) async {
    final response = await _object.callMethod(
      _interface,
      'Read',
      [const DBusString(_namespace), DBusString(key)],
      replySignature: DBusSignature('v'),
    );

    return response.returnValues.single;
  }

  void _setAccent(DBusValue value) {
    final val = (value.toNative() as Iterable).toList();
    _accent = Color.from(
      alpha: 1,
      red: val[0] as double,
      green: val[1] as double,
      blue: val[2] as double,
    );

    _accentController.add(_accent);
  }

  void _setContrast(DBusValue value) {
    final val = value.toNative() as int;
    _contrast = val == 1 ? .high : .normal;
    _contrastController.add(_contrast);
  }

  void _setBrightness(DBusValue value) {
    final val = value.toNative() as int;
    _brightness = val == 1 ? .dark : .light;
    _brightnessController.add(_brightness);
  }
}
