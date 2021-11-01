import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:portfolio/Providers/page_view_controller_provider.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/experience_screen.dart';
import 'package:portfolio/screens/work_screen.dart';
import 'package:portfolio/utility/constants.dart';
import 'package:portfolio/utility/functions.dart';
import 'package:portfolio/widgets/custom_icons_column.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

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
              Functions().navTo(context, controller, 0);
            },
            child: const Text(
              "1. About",
            ),
          ),
          TextButton(
            onPressed: () {
              Functions().navTo(context, controller, 1);
            },
            child: const Text(
              "2. Experience",
            ),
          ),
          TextButton(
            onPressed: () {
              Functions().navTo(context, controller, 2);
            },
            child: const Text(
              "3. Work",
            ),
          ),
          TextButton(
            onPressed: () {
              html.window.open(
                  'https://drive.google.com/file/d/118sah1he2JvH0Y_gnny9P-YaK3aS0wA7/view?usp=sharing',
                  "_blank");
            },
            child: const Text(
              "Resume",
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
              padding: const EdgeInsets.all(48.0),
              child: PageView(
                controller: controller,
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                onPageChanged: (index) {
                  Provider.of<PageViewControllerProvider>(context,
                          listen: false)
                      .setSelectedPage = index;
                },
                children: const [
                  AboutScreen(),
                  ExperienceScreen(),
                  WorkScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Constants().orange,
          onPressed: () {
            Functions().navTo(context, controller, 0);
          },
          tooltip: 'Back to the top',
          child: const Icon(Icons.arrow_upward),
        ),
      ),
    );
  }
}
