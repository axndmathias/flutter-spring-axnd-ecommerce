import 'package:flutter/material.dart';
import 'package:frontend/widgets/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveAppBar extends StatelessWidget {
  final String title;
  const ResponsiveAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black,
      elevation: 1,
      title: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 1000),
        child: Row(
          children: [
            const Expanded(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  'axndEcommerce',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: const [Condition.largerThan(name: MOBILE)],
              child: Expanded(child: Container()),
            ),
            const ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
              ],
              replacement: ResponsiveMenuActions(),
              child: Expanded(child: ResponsiveMenuActions()),
            ),
          ],
        ),
      ),
    );
  }
}
