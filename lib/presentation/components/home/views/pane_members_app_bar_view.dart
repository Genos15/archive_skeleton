import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:flutter/material.dart';

class PaneMembersAppBarView extends StatelessWidget with ThinDimensions {
  const PaneMembersAppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: false,
      elevation: 0.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.all(pagePadding),
          child: IntrinsicWidth(
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Members room',
                    style: Theme.of(context).textTheme.headline4,
                    children: [
                      TextSpan(
                        text: '\nSocial Intents',
                        style: Theme.of(context).textTheme.caption,
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
      backgroundColor: Colors.white,
    );
  }
}
