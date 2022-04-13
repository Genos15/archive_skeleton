import 'dart:io';

import 'package:archive_skeleton/common/configuration/routing_configuration.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
      return FluentApp.router(
        routeInformationParser: desktopRouter.routeInformationParser,
        routerDelegate: desktopRouter.routerDelegate,
        debugShowCheckedModeBanner: false,
        color: const Color(0xffffffff),
      );
    } else {
      return MaterialApp.router(
        routeInformationParser: desktopRouter.routeInformationParser,
        routerDelegate: desktopRouter.routerDelegate,
        debugShowCheckedModeBanner: false,
        color: const Color(0xffffffff),
        // backButtonDispatcher:
        //     BeamerBackButtonDispatcher(delegate: router.routerDelegate),
      );
    }
  }
}
