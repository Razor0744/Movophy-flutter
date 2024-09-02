import 'package:flutter/cupertino.dart';
import 'package:test_for_max/features/home_screen/domain/models/kinopoisk_series.dart';

import 'category_title.dart';
import 'kinopoisk_series_list.dart';

class KinopoiskCategoriesListItem extends StatelessWidget {
  const KinopoiskCategoriesListItem(
      {super.key, required this.categoryTitle, required this.kinopoiskListByCategory});

  final String categoryTitle;
  final List<KinopoiskSeries> kinopoiskListByCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryTitle(title: categoryTitle),
        KinopoiskSeriesList(kinopoiskListByCategory: kinopoiskListByCategory),
      ],
    );
  }
}