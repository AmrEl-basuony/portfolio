import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import '../utility/constants.dart';
import 'custom_card.dart';

class CustomFlipCard extends StatelessWidget {
  final String projectName, projectDiscreption;
  final Constants constants = Constants();

  CustomFlipCard(this.projectName, this.projectDiscreption, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlipCardController flipCardController = FlipCardController();
    return FlipCard(
      fill: Fill.fillFront,
      controller: flipCardController,
      front: MouseRegion(
        onEnter: (e) {
          flipCardController.toggleCard();
        },
        onExit: (e) {
          flipCardController.toggleCard();
        },
        child: CustomCard(
          Text(projectName, style: constants.subHeader2),
        ),
      ),
      back: MouseRegion(
        onExit: (e) {
          flipCardController.toggleCard();
        },
        child: CustomCard(
          Text(projectDiscreption, style: constants.paragraph),
        ),
      ),
    );
  }
}
