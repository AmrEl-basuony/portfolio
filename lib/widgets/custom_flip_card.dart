import 'dart:html' as html;
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utility/constants.dart';
import 'package:portfolio/widgets/custom_card.dart';

class CustomFlipCard extends StatelessWidget {
  String projectName, projectDiscreption;

  CustomFlipCard(this.projectName, this.projectDiscreption);

  @override
  Widget build(BuildContext context) {
    FlipCardController flipCardController = FlipCardController();
    return FlipCard(
      direction: FlipDirection.HORIZONTAL,
      fill: Fill.fillFront,
      flipOnTouch: true,
      controller: flipCardController,
      front: MouseRegion(
        onEnter: (e) {
          flipCardController.toggleCard();
        },
        onExit: (e) {
          flipCardController.toggleCard();
        },
        child: CustomCard(
          [
            Text(projectName, style: Constants().subHeader),
          ],
        ),
      ),
      back: MouseRegion(
        onExit: (e) {
          flipCardController.toggleCard();
        },
        child: CustomCard(
          [
            Text(projectDiscreption, style: Constants().paragraph),
          ],
        ),
      ),
    );
  }
}
