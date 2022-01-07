import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/page_view_controller_provider.dart';

class Functions {
  void navTo(BuildContext context, PageController controller, int page) {
    Provider.of<PageViewControllerProvider>(context, listen: false)
        .setSelectedPage = page;
    controller.animateToPage(
      Provider.of<PageViewControllerProvider>(context, listen: false)
          .getSelectedPage,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }
}
