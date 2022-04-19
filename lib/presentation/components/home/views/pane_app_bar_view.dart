import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;

class PaneAppBarView extends StatelessWidget with ThinDimensions {
  final String title;
  final String? subtitle;

  const PaneAppBarView({Key? key, required this.title, this.subtitle})
      : super(key: key);

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
                    text: title,
                    style: FluentTheme.of(context).typography.title,
                    children: [
                      if (subtitle != null && subtitle!.isNotEmpty)
                        TextSpan(
                          text: '\n$subtitle',
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
