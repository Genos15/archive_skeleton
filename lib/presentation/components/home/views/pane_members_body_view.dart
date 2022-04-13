import 'package:fluent_ui/fluent_ui.dart';

import 'pane_members_app_bar_view.dart';
import 'pane_members_tab_header_view.dart';

class PaneMembersBodyView extends StatelessWidget {
  const PaneMembersBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          const PaneMembersAppBarView(),
        ];
      },
      body: const PaneMembersTabHeaderView(),
    );
  }
}
