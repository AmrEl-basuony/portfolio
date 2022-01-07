import 'package:flutter/material.dart';
import '../utility/constants.dart';

class CustomCard extends StatelessWidget {
  final Widget widget;
  const CustomCard(this.widget, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        elevation: 0,
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Constants().darkBlue,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(child: widget),
          ),
        ),
      );
}
