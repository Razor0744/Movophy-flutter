import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavouritesButton extends StatelessWidget {
  const FavouritesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerRight,
        child: IconButton(
          onPressed: () => {},
          icon: SvgPicture.asset(
            'assets/svg/favourite.svg',
            width: 20,
            height: 20,
          ),
        ),
      ),
    );
  }
}
