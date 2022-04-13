import 'package:flutter/material.dart';

import '../../components/home/home_navigation_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeNavigationView(),
    );
  }
}
