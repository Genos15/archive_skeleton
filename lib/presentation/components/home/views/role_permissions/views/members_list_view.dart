import 'package:fluent_ui/fluent_ui.dart';

import '../../../../../extensions/thin_dimensions.dart';
import 'members_card_view.dart';
import 'members_list_header_view.dart';

class MembersListView extends StatelessWidget with ThinDimensions {
  const MembersListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: CustomScrollView(
        slivers: [
          const MembersListHeaderView(),
          sliverSpacePage,
          SliverGrid.count(
            crossAxisCount: 4,
            childAspectRatio: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: [for (var i = 0; i < 37; i++) const MembersCardView()],
          ),
        ],
      ),
    );
  }
}
