import 'package:flutter/material.dart';

import '../../widgets/responsive_appbar.dart';
import '../../widgets/responsive_navbar.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);
  static const String routeName = '/catalog';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CatalogScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          child: ResponsiveAppBar(title: "Catalog"),
          preferredSize: Size(double.infinity, 52),
        ),
        bottomNavigationBar: ResponsiveNavAppBar());
  }
}
