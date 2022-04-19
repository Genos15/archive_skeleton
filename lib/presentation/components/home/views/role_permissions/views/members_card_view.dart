import 'dart:math';

import 'package:archive_skeleton/presentation/extensions/thin_colors.dart';
import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;
import 'package:flutter_svg/svg.dart';

class MembersCardView extends StatelessWidget with ThinDimensions, ThinColors {
  const MembersCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mat.Card(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          // child: SvgPicture.network(
          //   'https://avatars.dicebear.com/api/pixel-art/:seed.svg',
          //   semanticsLabel: 'A shark?!',
          //   placeholderBuilder: (BuildContext context) => Container(
          //       padding: const EdgeInsets.all(30.0), child: Container()),
          // ),
          child: Text(
            "AH",
            style: FluentTheme.maybeOf(context)
                ?.typography
                .bodyLarge
                ?.copyWith(color: Colors.white),
          ),
          // backgroundImage: NetworkImage('https://avatars.dicebear.com/api/pixel-art/:seed.svg'),
        ),
        title: const Text('Name of the member'),
        subtitle: const Text('job title'),
      ),
      shape: RoundedRectangleBorder(borderRadius: regularBorderRadius),
      shadowColor: shadowColor,
      elevation: cardElevation,
    );
  }

  int get _generateRandomInt {
    final _random = Random();
    return _random.nextInt(10) + 1;
  }
}
