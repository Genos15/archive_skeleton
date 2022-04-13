import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../../../di/setup_service_locator.dart';
import '../login/repository/auth_repository.dart';
import '../template/template_body_view.dart';
import 'views/pane_members_body_view.dart';

class HomeNavigationView extends StatefulWidget {
  const HomeNavigationView({Key? key}) : super(key: key);

  @override
  State<HomeNavigationView> createState() => _HomeNavigationViewState();
}

class _HomeNavigationViewState extends State<HomeNavigationView> {
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
        displayMode: PaneDisplayMode.compact,
        onChanged: (newIndex) => setState(() => _index = newIndex),
        items: <NavigationPaneItem>[
          PaneItem(
            icon: const Icon(Ionicons.people_outline),
            title: const Text('Members'),
          ),
          PaneItem(
            icon: const Icon(Ionicons.cube_outline),
            title: const Text('Boîtes'),
          ),
          PaneItem(
            icon: const Icon(Ionicons.help_circle_outline),
            title: const Text('Aide'),
          ),
        ],
        footerItems: <NavigationPaneItem>[
          PaneItem(
            icon: const Icon(Ionicons.bag_handle_outline),
            title: const Text('Marketplace'),
          ),
          PaneItem(
            icon: const Icon(Ionicons.man_outline),
            title: const Text('Profile'),
          ),
          PaneItemAction(
            title: const Text('Logout'),
            icon: const Icon(Ionicons.log_out_outline),
            onTap: () {
              it<AuthRepository>().onLog(state: false);
              context.go('/');
            },
          ),
        ],
      ),
      content: NavigationBody(
        index: _index,
        transitionBuilder: (child, animation) => EntrancePageTransition(
          child: child,
          animation: animation,
        ),
        children: const [
          PaneMembersBodyView(),
          TemplateBodyView(),
          TemplateBodyView(),
          TemplateBodyView(),
          TemplateBodyView(),
        ],
      ),
    );
  }
}
