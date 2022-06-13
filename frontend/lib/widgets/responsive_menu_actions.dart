import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
          onPressed: () {
            Navigator.pushNamed(context, "/wish");
          },
          icon: const Icon(Icons.favorite_outline),
        ),
        ResponsiveVisibility(
            visible: false,
            visibleWhen: const [Condition.largerThan(name: TABLET)],
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  icon: const Icon(Icons.home_outlined),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/cart");
                  },
                  icon: const Icon(Icons.shopping_cart_outlined),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/user");
                  },
                  icon: const Icon(Icons.person_outlined),
                ),
              ],
            )),
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
