import 'package:flutter/material.dart';
import 'package:parallax_effect/ui/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parallax Effect',
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (_) => const HomePage(),
      },
    );
  }
}
