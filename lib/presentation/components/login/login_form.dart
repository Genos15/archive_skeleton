import 'package:archive_skeleton/di/setup_service_locator.dart';
import 'package:archive_skeleton/presentation/extensions/thin_colors.dart';
import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart' as wid;

import 'repository/auth_repository.dart';
import 'use_cases/contact_support_use_case.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> with ThinDimensions, ThinColors {
  late final GlobalKey _formKey;
  late bool _isPasswordVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _formKey = GlobalKey(debugLabel: 'form-login');
    _isPasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return wid.Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: pagePadding * 2,
          horizontal: pagePadding,
        ),
        child: Form(
          key: _formKey,
          child: IntrinsicHeight(
            child: Column(
              children: [
                const Text(
                  'Welcome back',
                  style: TextStyle(color: Colors.grey),
                ),
                _space,
                const Text(
                  'Log into your account',
                  style: TextStyle(fontSize: 24),
                ),
                _space,
                TextFormBox(
                  header: 'E-mail or Username',
                  placeholder: 'Enter your e-mail or username',
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Provide an email';
                    }
                    return null;
                  },
                  padding: EdgeInsets.all(buttonPadding),
                  enableSuggestions: false,
                ),
                _space,
                TextFormBox(
                  header: 'Password',
                  placeholder: 'Enter your password',
                  obscureText: !_isPasswordVisible,
                  enableSuggestions: false,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Provide an email';
                    }
                    return null;
                  },
                  suffix: Padding(
                    padding: EdgeInsets.only(right: buttonPadding),
                    child: GestureDetector(
                      onTap: () => setState(
                          () => _isPasswordVisible = !_isPasswordVisible),
                      child: Icon(
                          !_isPasswordVisible
                              ? Ionicons.eye_outline
                              : Ionicons.eye_off_outline,
                          size: 18),
                    ),
                  ),
                  padding: EdgeInsets.all(buttonPadding),
                ),
                _space,
                FilledButton(
                  child: const SizedBox(
                    child: Text('Login now'),
                    width: double.maxFinite,
                  ),
                  onPressed: () {
                    it<AuthRepository>().onLog();
                    context.go('/');
                  },
                  style: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.all(buttonPadding)),
                  ),
                ),
                _space,
                SizedBox(
                  width: double.maxFinite,
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      style: const TextStyle(color: Colors.grey),
                      children: [
                        const TextSpan(text: 'Not registered yet? '),
                        TextSpan(
                          text: 'Contact support',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => contactSupportUseCase(context),
                        ),
                        const WidgetSpan(
                          child: Icon(Ionicons.arrow_forward, size: 14),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: regularBorderRadius),
      shadowColor: shadowColor,
      elevation: cardElevation,
    );
  }

  Widget get _space => SizedBox.fromSize(size: Size.fromHeight(contentPadding));
}
