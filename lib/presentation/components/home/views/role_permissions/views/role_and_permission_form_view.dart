import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as Mat;

class RoleAndPermissionFormView extends StatelessWidget with ThinDimensions {
  const RoleAndPermissionFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: IntrinsicHeight(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormBox(
                    header: 'Name: *',
                    placeholder: 'Name',
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide an email';
                      }
                      return null;
                    },
                    padding: EdgeInsets.all(buttonPadding),
                    enableSuggestions: false,
                  ),
                ),
                spacePage,
                Expanded(
                  child: TextFormBox(
                    header: 'Display Name: *',
                    placeholder: 'Display Name',
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide an email';
                      }
                      return null;
                    },
                    padding: EdgeInsets.all(buttonPadding),
                    enableSuggestions: false,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormBox(
                    header: 'Description:',
                    placeholder: 'Description',
                    validator: (text) => null,
                    padding: EdgeInsets.all(buttonPadding),
                    enableSuggestions: false,
                    minLines: 5,
                    maxLines: 10,
                  ),
                ),
              ],
            ),
            spacePage,
            Mat.Divider(
              color: Mat.Theme.of(context).dividerTheme.color,
            )
          ],
        ),
      ),
    );
  }
}
