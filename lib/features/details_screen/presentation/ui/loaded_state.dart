import 'package:flutter/material.dart';
import 'package:test_for_max/features/details_screen/presentation/cubit/details_ui_state.dart';
import 'package:test_for_max/features/details_screen/presentation/ui/player_button.dart';
import 'package:test_for_max/features/details_screen/presentation/ui/title_description.dart';

import 'custom_divider.dart';
import 'details_image.dart';
import 'favourites_button.dart';

class LoadedState extends StatelessWidget {
  const LoadedState({super.key, required this.state});

  final Loaded state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: ListView(
        children: [
          DetailsImage(imageUrl: state.detailsTitleModel.imageUrl),
          const PlayerButton(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
            child: Row(
              children: [
                Text(state.detailsTitleModel.titleName),
                const FavouritesButton(),
              ],
            ),
          ),
          const CustomDivider(),
          TitleDescription(titleDescription: state.detailsTitleModel.titleDescription,),
          const CustomDivider(),
        ],
      ),
    );
  }
}
