import 'package:archive_skeleton/presentation/components/login/login_form.dart';
import 'package:archive_skeleton/presentation/extensions/thin_colors.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget with ThinColors {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fui.Center(
        child: fui.ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 512),
          child: const fui.IntrinsicHeight(
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}
