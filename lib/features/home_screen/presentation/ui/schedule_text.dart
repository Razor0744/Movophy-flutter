import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String scheduleText = 'Waiting today';

class ScheduleText extends StatelessWidget {
  const ScheduleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
      child: Text(
        AppLocalizations.of(context)?.schedulesText ?? scheduleText,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
