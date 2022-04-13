import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;

class PaneMembersAppBarView extends StatelessWidget with ThinDimensions {
  const PaneMembersAppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mat.SliverAppBar(
      pinned: false,
      floating: false,
      elevation: 0.0,
      flexibleSpace: mat.FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.all(pagePadding),
          child: IntrinsicWidth(
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Members room',
                    style: FluentTheme.of(context).typography.title,
                    children: [
                      TextSpan(
                        text: '\nSocial Intents',
                        style: FluentTheme.of(context).typography.caption,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      expandedHeight: 230,
      collapsedHeight: 230,
      backgroundColor: mat.Colors.white,
    );
  }
}
