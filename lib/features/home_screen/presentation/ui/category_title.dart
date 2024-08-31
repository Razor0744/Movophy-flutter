import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
