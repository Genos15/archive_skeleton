import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;
import 'package:ionicons/ionicons.dart';

class MembersListHeaderView extends StatelessWidget with ThinDimensions {
  const MembersListHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mat.SliverAppBar(
      pinned: false,
      floating: false,
      elevation: 0.0,
      flexibleSpace: mat.FlexibleSpaceBar(
        background: Row(
          children: [
            Text(
              'Members',
              style: FluentTheme.maybeOf(context)?.typography.subtitle,
            ),
            spacePage,
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 512),
                child: TextBox(
                  placeholder: 'Search',
                  suffix: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Ionicons.search,
                      color: Colors.black.withOpacity(.4),
                    ),
                  ),
                  padding: EdgeInsets.all(buttonPadding),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: mat.Colors.transparent,
      actions: [
        mat.Align(
          alignment: Alignment.center,
          child: OutlinedButton(
            onPressed: () {},
            child: const Text('Add New'),
          ),
        )
      ],
    );
  }
}
