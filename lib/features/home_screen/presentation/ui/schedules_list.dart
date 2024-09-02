import 'package:flutter/cupertino.dart';
import 'package:test_for_max/features/home_screen/presentation/ui/schedules_list_item.dart';

import '../bloc/home_ui_state.dart';

class SchedulesList extends StatelessWidget {
  const SchedulesList({super.key, required this.state});

  final Loaded state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        scrollDirection: Axis.horizontal,
        itemCount: state.homeState.animeSeriesList.length,
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0));
        },
        itemBuilder: (context, index) {
          final item = state.homeState.animeSeriesList[index];

          return SchedulesListItem(item: item);
        },
      ),
    );
  }
}
