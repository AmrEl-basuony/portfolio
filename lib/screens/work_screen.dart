import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_flip_card.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        CustomFlipCard("Chat app",
            "A chat app like skype with text, audio and video chat, built using firebase"),
        CustomFlipCard("Quran app", "A Quran app using APIs to get its data"),
        CustomFlipCard("Weather app",
            "A weather app usisng APIs to get data with geolocation"),
        CustomFlipCard("Portfolio Web app",
            "A portfolio web page displaying all my social links and current projects"),
      ],
    );
  }
}
