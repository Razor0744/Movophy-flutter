import 'package:flutter/material.dart';
import 'package:test_for_max/features/home_screen/domain/models/anime_series.dart';

class SchedulesListItem extends StatelessWidget {
  const SchedulesListItem({super.key, required this.item});

  final AnimeSeries item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/details_screen', arguments: item.id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          item.pictureUrl,
          fit: BoxFit.fill,
          width: 120,
          height: 180,
        ),
      ),
    );
  }
}
