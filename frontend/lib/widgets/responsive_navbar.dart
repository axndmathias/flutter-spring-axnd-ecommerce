import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveNavAppBar extends StatelessWidget {
  const ResponsiveNavAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [Condition.smallerThan(name: TABLET)],
      child: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                icon: const Icon(Icons.home_outlined, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/cart");
                },
                icon: const Icon(Icons.shopping_cart_checkout_outlined,
                    color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/user");
                },
                icon: const Icon(Icons.person_outline, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
