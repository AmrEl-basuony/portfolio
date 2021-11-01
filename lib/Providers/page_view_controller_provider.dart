import 'package:flutter/material.dart';

class PageViewControllerProvider extends ChangeNotifier {
  PageController controller = PageController(initialPage: 0, keepPage: true);
  PageController get getController => controller;

  int selectedPage = 0;
  int get getSelectedPage => selectedPage;

  set setSelectedPage(int selectedPage) {
    this.selectedPage = selectedPage;
    notifyListeners();
  }
}
