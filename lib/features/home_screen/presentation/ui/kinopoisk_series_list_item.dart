import 'package:flutter/cupertino.dart';
import 'package:test_for_max/features/home_screen/domain/models/kinopoisk_series.dart';

class KinopoiskSeriesListItem extends StatelessWidget {
  const KinopoiskSeriesListItem({super.key, required this.item});

  final KinopoiskSeries item;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        item.url,
        fit: BoxFit.fill,
        width: 120,
        height: 180,
      ),
    );
  }
}
