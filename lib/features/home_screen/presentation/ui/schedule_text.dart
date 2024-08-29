import 'package:flutter/cupertino.dart';

class ScheduleText extends StatelessWidget {
  const ScheduleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
      child: Text('Ожидается сегодня'),
    );
  }
}
