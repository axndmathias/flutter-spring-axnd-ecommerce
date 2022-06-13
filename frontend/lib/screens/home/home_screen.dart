import 'package:flutter/material.dart';

import '../../widgets/responsive_appbar.dart';
import '../../widgets/responsive_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          child: ResponsiveAppBar(title: "axnd Ecommerce"),
          preferredSize: Size(double.infinity, 52),
        ),
        bottomNavigationBar: ResponsiveNavAppBar());
  }
}
