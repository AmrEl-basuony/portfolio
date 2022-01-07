import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'Providers/page_view_controller_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Amr Ahmed || Portfolio',
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: ChangeNotifierProvider(
          create: (context) => PageViewControllerProvider(),
          child: ResponsiveWrapper.builder(
            HomeScreen(title: 'Welcome'),
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(480, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ],
          ),
        ),
      );
}
