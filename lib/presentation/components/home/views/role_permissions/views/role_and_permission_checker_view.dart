import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;

import '../../../../../extensions/thin_dimensions.dart';

class RoleAndPermissionCheckerView extends StatelessWidget with ThinDimensions {
  const RoleAndPermissionCheckerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: mat.Text(
            'Permissions',
            style: mat.Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.start,
          ),
          width: double.maxFinite,
        ),
        spacePage,
        mat.Wrap(
          runSpacing: pagePadding,
          spacing: pagePadding,
          children: [
            OutlinedButton(
              child: const Text('Show all'),
              onPressed: () {},
            ),
            OutlinedButton(
              child: const Text('Management'),
              onPressed: () {},
            ),
            OutlinedButton(
              child: const Text('Employees'),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
