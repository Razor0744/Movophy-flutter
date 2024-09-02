import 'package:flutter/cupertino.dart';

import '../bloc/home_ui_state.dart';
import 'kinopoisk_categories_list_item.dart';

class KinopoiskCategoriesList extends StatelessWidget {
  const KinopoiskCategoriesList({
    super.key,
    required this.state,
    required this.categories,
  });

  final Loaded state;
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.homeState.kinopoiskSeriesList.length,
      itemBuilder: (context, index) {
        final kinopoiskListByCategory = state.homeState.kinopoiskSeriesList[index];
        final category = categories[index];

        return KinopoiskCategoriesListItem(categoryTitle: category, kinopoiskListByCategory: kinopoiskListByCategory,);
      },
    );
  }
}
