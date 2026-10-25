import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;

///
void addLicense(String path) => LicenseRegistry.addLicense(() async* {
  final license = await rootBundle.loadString(path);
  yield LicenseEntryWithLineBreaks(<String>[p.basename(path)], license);
});
