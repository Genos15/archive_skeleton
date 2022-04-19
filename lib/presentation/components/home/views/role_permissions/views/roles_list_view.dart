import 'package:archive_skeleton/presentation/components/home/views/role_permissions/views/role_and_permisson_header_view.dart';
import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';

import '../role_and_permission_add_view.dart';

class RolesListView extends StatelessWidget with ThinDimensions {
  const RolesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: CustomScrollView(
        slivers: [
          const RoleAndPermissionHeaderView(),
          sliverSpacePage,
          const SliverFillRemaining(child: RoleAndPermissionAddView()),
        ],
      ),
    );
  }
}
