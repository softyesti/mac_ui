/// UI kit based on the current macOS design language.
library;

import 'package:mac_ui/license.dart';

/// UI kit based on the current macOS design language.
sealed class MacUI {
  /// UI kit based on the current macOS design language.
  const new();

  /// Initializes the library.
  static Future<void> init() async {
    addLicense('assets/fonts/inter/OFL.txt');
  }
}
