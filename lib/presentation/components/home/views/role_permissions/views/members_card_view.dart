import 'package:archive_skeleton/presentation/extensions/thin_colors.dart';
import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;

class MembersCardView extends StatelessWidget with ThinDimensions, ThinColors {
  const MembersCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mat.Card(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            "AH",
            style: FluentTheme.maybeOf(context)
                ?.typography
                .bodyLarge
                ?.copyWith(color: Colors.white),
          ),
        ),
        title: const Text('Name of the member'),
        subtitle: const Text('job title'),
      ),
      shape: RoundedRectangleBorder(borderRadius: regularBorderRadius),
      shadowColor: shadowColor,
      elevation: cardElevation,
    );
  }
}
