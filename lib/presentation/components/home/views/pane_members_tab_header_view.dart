import 'package:fluent_ui/fluent_ui.dart';
import 'package:ionicons/ionicons.dart';

import '../../../extensions/thin_dimensions.dart';
import 'role_permissions/role_and_permission_add_view.dart';
import 'role_permissions/views/members_list_view.dart';

class PaneMembersTabHeaderView extends StatefulWidget {
  const PaneMembersTabHeaderView({Key? key}) : super(key: key);

  @override
  State<PaneMembersTabHeaderView> createState() =>
      _PaneMembersTabHeaderViewState();
}

class _PaneMembersTabHeaderViewState extends State<PaneMembersTabHeaderView>
    with ThinDimensions {
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      pane: NavigationPane(
        selected: _index,
        displayMode: PaneDisplayMode.top,
        onChanged: (newIndex) => setState(() => _index = newIndex),
        items: <NavigationPaneItem>[
          PaneItem(
            icon: const Icon(Ionicons.people_outline),
            title: const Text('Members'),
          ),
          PaneItem(
            icon: const Icon(Ionicons.settings_outline),
            title: const Text('Role & Permissions'),
          ),
        ],
      ),
      content: NavigationBody(
        index: _index,
        transitionBuilder: (child, animation) => EntrancePageTransition(
          child: child,
          animation: animation,
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(pagePadding),
            child: const MembersListView(),
          ),
          Padding(
            padding: EdgeInsets.all(pagePadding),
            child: const RoleAndPermissionAddView(),
          ),
        ],
      ),
    );
  }
}
