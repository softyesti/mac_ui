# MacUI

![License](https://img.shields.io/github/license/quartz-vmm/desktop?style=plastic&color=blue)
![Contributing](https://img.shields.io/badge/contributing-Closed-blue?style=plastic)

UI kit based on the current macOS design language.

## 🚀 Features

Coming soon...

## 🧰 Technologies

[![Made with Dart](https://img.shields.io/badge/backend-Dart-blue?style=plastic)](https://dart.dev)
[![Made with Flutter](https://img.shields.io/badge/frontend-Flutter-blue?style=plastic)]((https://flutter.dev))
[![style: very good analysis](https://img.shields.io/badge/code_style-Very_Good_Analysis-blue.svg?style=plastic)](https://pub.dev/packages/very_good_analysis)

- Dart [\<https://dart.dev\>](https://dart.dev)
- Flutter [\<https://flutter.dev\>](https://flutter.dev)

## 🖥️ Platforms

- Linux 🟡
- macOS 🟡
- Windows 🟡

## ✨ Getting started

Add the package:

```bash
flutter pub add mac_ui
```

Import the package:

```dart
import 'package:mac_ui/mac_ui.dart'
```

## 🔥 Usage

See more in the [examples](./examples/) folder.

```dart
import 'package:mac_ui/mac_ui.dart';

Future<void> main() {
  await MacUI.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp();

  Widget build(BuildContext context) {
    return MacUIApp(
      theme: MacUITheme.dynamic,
      child: ...,
    );
  }
}
```

## 🫂 Authors

- SoftYes TI <[@softyesti](https://github.com/softyesti)>
- João Sereia <[@josereia](https://github.com/josereia)>
