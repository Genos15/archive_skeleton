import 'package:fluent_ui/fluent_ui.dart';

import '../../../../extensions/thin_dimensions.dart';
import 'views/role_and_permission_form_view.dart';

class RoleAndPermissionAddView extends StatelessWidget with ThinDimensions {
  const RoleAndPermissionAddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: RoleAndPermissionFormView()),
          sliverSpacePage,
          SliverToBoxAdapter(
            child: SizedBox(
              child: Text(
                'Permissions',
                style: FluentTheme.of(context).typography.subtitle,
                textAlign: TextAlign.start,
              ),
              width: double.maxFinite,
            ),
          ),
          sliverSpacePage,
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Align(
                    child: OutlinedButton(
                      child: Text([
                        'Show all',
                        'Management',
                        'Employees',
                        'Visitors'
                      ][index]),
                      onPressed: () {},
                    ),
                  );
                },
                separatorBuilder: (context, index) => spacePage,
              ),
            ),
          ),
          sliverSpacePage,
          SliverGrid.count(
            crossAxisCount: 4,
            childAspectRatio: 8,
            children: [
              for (var i = 0; i < 40; i++)
                Checkbox(
                  checked: false,
                  content: Text('Permission $i'),
                  onChanged: (bool? value) {},
                )
            ],
          ),
        ],
      ),
    );
  }
}
