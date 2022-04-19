import 'package:archive_skeleton/presentation/components/home/views/role_permissions/role_and_permission_add_view.dart';
import 'package:fluent_ui/fluent_ui.dart';

void openModalAddRoleUseCase(BuildContext context) => showDialog(
      context: context,
      builder: (context) => ContentDialog(
        title: const Text('Role'),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
        ),
        content: const RoleAndPermissionAddView(),
        actions: [
          Button(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Button(
            child: const Text('Save'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ).ignore();
