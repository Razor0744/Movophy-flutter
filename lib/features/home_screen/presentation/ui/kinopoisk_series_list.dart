import 'package:flutter/cupertino.dart';
import 'package:test_for_max/features/home_screen/domain/models/kinopoisk_series.dart';

import 'kinopoisk_series_list_item.dart';

class KinopoiskSeriesList extends StatelessWidget {
  const KinopoiskSeriesList({super.key, required this.kinopoiskListByCategory});

  final List<KinopoiskSeries> kinopoiskListByCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        scrollDirection: Axis.horizontal,
        itemCount: kinopoiskListByCategory.length,
        separatorBuilder: (context, index) {
          return const Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0));
        },
        itemBuilder: (context, index) {
          final item = kinopoiskListByCategory[index];

          return KinopoiskSeriesListItem(item: item);
        },
      ),
    );
  }
}
