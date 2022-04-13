import 'package:fluent_ui/fluent_ui.dart';

import '../repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  late final ValueNotifier<bool> _state;

  AuthRepositoryImpl() {
    _state = ValueNotifier(false);
  }

  @override
  bool onLog({bool state = true}) {
    _state.value = state;
    return _state.value;
  }

  @override
  bool get isLogged => _state.value;
}
