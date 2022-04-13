import 'package:flutter/material.dart';

import '../../di/setup_service_locator.dart';
import '../../presentation/components/login/repository/auth_repository.dart';

extension BuildContextExtension on BuildContext {
  bool get isLogged => it<AuthRepository>().isLogged;
}
