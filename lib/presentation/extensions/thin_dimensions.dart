import 'package:flutter/material.dart';

mixin ThinDimensions {
  double get pagePadding => 20;

  double get contentPadding => 15;

  double get textBoxPadding => 4;

  double get buttonPadding => 12;

  BorderRadius get regularBorderRadius => BorderRadius.circular(4.0);

  BorderRadius get buttonBorderRadius => BorderRadius.circular(4.0);

  double get cardElevation => 8.0;

  Widget get spacePage => SizedBox(width: pagePadding, height: pagePadding);

  Widget get sliverSpacePage => SliverToBoxAdapter(child: spacePage);

}
