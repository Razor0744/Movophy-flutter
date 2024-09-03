import 'package:flutter/cupertino.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.fill,
      height: 510,
    );
  }
}
