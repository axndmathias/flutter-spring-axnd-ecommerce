import 'package:flutter/material.dart';
import 'package:frontend/widgets/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'widgets/responsive_appbar.dart';
import 'widgets/responsive_bottonappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'axndEcommerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        minWidth: 450,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(700, name: TABLET),
          const ResponsiveBreakpoint.resize(800, name: DESKTOP),
        ],
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
