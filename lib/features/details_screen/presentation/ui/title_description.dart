import 'package:flutter/cupertino.dart';

class TitleDescription extends StatelessWidget {
  const TitleDescription({super.key, required this.titleDescription});

  final String titleDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Text(titleDescription),
    );
  }
}
