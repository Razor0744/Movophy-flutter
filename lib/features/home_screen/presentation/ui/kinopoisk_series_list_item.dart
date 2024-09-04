import 'package:flutter/material.dart';
import 'package:test_for_max/common/constants/constants.dart';
import 'package:test_for_max/features/home_screen/domain/models/kinopoisk_series.dart';

import '../../../../common/models/details_arguments_model.dart';

class KinopoiskSeriesListItem extends StatelessWidget {
  const KinopoiskSeriesListItem({super.key, required this.item});

  final KinopoiskSeries item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/details_screen',
            arguments: DetailsArgumentsModel(item.id, apiCategoryKinopoisk));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          item.url,
          fit: BoxFit.fill,
          width: 120,
          height: 180,
        ),
      ),
    );
  }
}
