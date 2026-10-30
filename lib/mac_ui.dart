/// UI kit based on the current macOS design language.
library;

import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:mac_ui/license.dart';
import 'package:mac_ui/src/repositories/theme/theme_repository.dart';
import 'package:mac_ui/src/repositories/theme/theme_repository_impl.dart';
import 'package:mac_ui/src/services/theme/linux_theme_service_impl.dart';
import 'package:mac_ui/src/services/theme/theme_service_impl.dart';

export 'src/domain.dart';
export 'src/theme.dart';

/// UI kit based on the current macOS design language.
sealed class MacUI {
  /// UI kit based on the current macOS design language.
  const new();

  /// Initializes the library.
  static Future<void> init() async {
    addLicense('assets/fonts/inter/OFL.txt');
    addLicense('assets/fonts/nunito/OFL.txt');
    addLicense('assets/fonts/literata/OFL.txt');
    addLicense('assets/fonts/jetbrains/OFL.txt');

    GetIt.I.registerSingleton<ThemeRepository>(
      ThemeRepositoryImpl(
        themeService: switch (Platform.isLinux) {
          false => await ThemeServiceImpl().init(),
          true => await LinuxThemeServiceImpl().init(),
        },
      ),
    );
  }
}
