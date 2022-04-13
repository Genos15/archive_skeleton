import 'package:archive_skeleton/presentation/application/my_app.dart';
import 'package:flutter/material.dart';

import 'di/setup_service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}
