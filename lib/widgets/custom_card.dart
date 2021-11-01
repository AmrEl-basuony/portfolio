import 'package:flutter/material.dart';
import 'package:portfolio/utility/constants.dart';

class CustomCard extends StatelessWidget {
  List<Widget> widgetList = [];
  CustomCard(this.widgetList);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.fromLTRB(32.0, 20.0, 32.0, 0.0),
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Constants().darkBlue,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widgetList,
        ),
      ),
    );
  }
}
