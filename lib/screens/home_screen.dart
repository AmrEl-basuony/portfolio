import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/page_view_controller_provider.dart';
import '../utility/constants.dart';
import '../utility/functions.dart';
import '../widgets/custom_icons_column.dart';
import 'about_screen.dart';
import 'experience_screen.dart';
import 'work_screen.dart';

class HomeScreen extends StatefulWidget {
  final Functions functions = Functions();
  HomeScreen({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        Provider.of<PageViewControllerProvider>(context, listen: false)
            .getController;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          TextButton(
            onPressed: () {
              widget.functions.navTo(context, controller, 0);
            },
            child: const Text(
              '1. About',
            ),
          ),
          TextButton(
            onPressed: () {
              widget.functions.navTo(context, controller, 1);
            },
            child: const Text(
              '2. Experience',
            ),
          ),
          TextButton(
            onPressed: () {
              widget.functions.navTo(context, controller, 2);
            },
            child: const Text(
              '3. Work',
            ),
          ),
          TextButton(
            onPressed: () {
              html.window.open(
                'https://drive.google.com/file/d/118sah1he2JvH0Y_gnny9P-YaK3aS0wA7/view?usp=sharing',
                '_blank',
              );
            },
            child: const Text(
              'Resume',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Stack(
          children: [
            const CustomIconsColumn(),
            Padding(
              padding: const EdgeInsets.all(48),
              child: PageView(
                allowImplicitScrolling: true,
                controller: controller,
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                onPageChanged: (index) {
                  Provider.of<PageViewControllerProvider>(
                    context,
                    listen: false,
                  ).setSelectedPage = index;
                },
                children: [
                  AboutScreen(),
                  ExperienceScreen(),
                  const WorkScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8),
        child: FloatingActionButton(
          backgroundColor: Constants().orange,
          onPressed: () {
            widget.functions.navTo(context, controller, 0);
          },
          tooltip: 'Back to the top',
          child: const Icon(Icons.arrow_upward),
        ),
      ),
    );
  }
}
