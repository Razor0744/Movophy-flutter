import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_for_max/features/home_screen/presentation/ui/schedule_text.dart';
import 'package:test_for_max/features/home_screen/presentation/ui/schedules_list.dart';

import '../bloc/home_ui_state.dart';
import 'kinopoisk_categories_list.dart';

class LoadedState extends StatelessWidget {
  const LoadedState({super.key, required this.state});

  final Loaded state;

  @override
  Widget build(BuildContext context) {
    final categoriesString =
        AppLocalizations.of(context)?.kinopoiskCategories ?? '';
    final categories = categoriesString.split(', ');

    return SafeArea(
      top: true,
      bottom: true,
      child: ListView(
        children: [
          const ScheduleText(),
          SchedulesList(state: state),
          KinopoiskCategoriesList(state: state, categories: categories),
        ],
      ),
    );
  }
}
