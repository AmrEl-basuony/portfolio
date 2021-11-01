import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/page_view_controller_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amr Ahmed || Portfolio',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: ChangeNotifierProvider(
        create: (context) => PageViewControllerProvider(),
        child: const HomeScreen(title: 'Welcome'),
      ),
    );
  }
}
