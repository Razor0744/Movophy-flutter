import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleText extends StatelessWidget {
  const ScheduleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
      child: Text(
        'Ожидается сегодня',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
