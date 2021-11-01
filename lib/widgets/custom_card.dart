import 'package:flutter/material.dart';
import 'package:portfolio/utility/constants.dart';

class CustomCard extends StatelessWidget {
  Widget widget;
  CustomCard(this.widget);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Constants().blue,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: widget),
        ),
      ),
    );
  }
}
