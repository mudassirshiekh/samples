import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'config/dependencies.dart';
import 'main.dart';

/// Staging config entry point.
/// Launch with `flutter run --target lib/main_staging.dart`.
/// Uses remote data from a server.
void main() {
  Logger.root.level = Level.ALL;

  runApp(
    MultiProvider(
      providers: providersRemote,
      child: const MainApp(),
    ),
  );
}