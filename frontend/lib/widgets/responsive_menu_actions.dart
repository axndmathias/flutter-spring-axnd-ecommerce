import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResponsiveMenuActions extends StatelessWidget {
  const ResponsiveMenuActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
        const SizedBox(width: 4),
        IconButton(
          icon: SvgPicture.asset('./images/github.svg'),
          onPressed: () {},
        ),
        const SizedBox(width: 4),
      ],
    );
  }
}
