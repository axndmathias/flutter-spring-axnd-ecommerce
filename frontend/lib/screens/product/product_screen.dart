import 'package:flutter/material.dart';

import '../../widgets/responsive_appbar.dart';
import '../../widgets/responsive_navbar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);
  static const String routeName = '/product';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const ProductScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          child: ResponsiveAppBar(title: "Product"),
          preferredSize: Size(double.infinity, 52),
        ),
        bottomNavigationBar: ResponsiveNavAppBar());
  }
}
