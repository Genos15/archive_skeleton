import 'package:archive_skeleton/presentation/extensions/thin_dimensions.dart';
import 'package:fluent_ui/fluent_ui.dart';

import '../pane_app_bar_view.dart';
import 'boxes_card_view.dart';

class PaneBoxesHomeView extends StatelessWidget with ThinDimensions{
  const PaneBoxesHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const PaneAppBarView(
          title: "Boxes room",
          subtitle: "Social Intents",
        ),
        SliverPadding(
          padding: EdgeInsets.all(pagePadding),
          sliver: SliverGrid.count(
            crossAxisCount: 5,
            mainAxisSpacing: pagePadding,
            crossAxisSpacing: pagePadding,
            childAspectRatio: 1,
            children: [
              for (var i = 0; i < 23; i++)
                const BoxesCardView()
            ],
          ),
        ),
      ],
    );
  }
}
