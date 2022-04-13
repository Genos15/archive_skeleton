import 'package:fluent_ui/fluent_ui.dart';

import '../../../../extensions/thin_dimensions.dart';
import 'views/role_and_permission_checker_view.dart';
import 'views/role_and_permission_form_view.dart';

class RoleAndPermissionAddView extends StatelessWidget with ThinDimensions {
  const RoleAndPermissionAddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          const RoleAndPermissionFormView(),
          spacePage,
          const RoleAndPermissionCheckerView(),
        ],
      ),
    );
  }
}
