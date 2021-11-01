import 'package:flutter/material.dart';
import 'package:portfolio/utility/constants.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Experience",
          style: Constants().header,
        ),
        Text(
          "Since I am a fresh graduate i don't have actual working experience except me workring on my own projects",
          style: Constants().subHeader,
        )
      ],
    );
  }
}
