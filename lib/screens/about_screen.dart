import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utility/constants.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Amr Ahmed El-basuony",
          style: Constants().header,
        ),
        AnimatedTextKit(
          repeatForever: true,
          pause: const Duration(seconds: 2),
          animatedTexts: [
            TyperAnimatedText("Flutter developer.",
                textStyle: Constants().subHeader),
            TyperAnimatedText(
              "Cross platform.",
              textStyle: Constants().subHeader,
            ),
          ],
        ),
        Text(
          "About me.",
          style: Constants().subHeader,
        ),
        Text(
          "I am a fresh computer science graduate,\nworking with flutter for more than a year now,\nlove to take on new challenges and solve problems,\nlooking for new opportunities to hone my skills and gain new experiences.",
          style: Constants().paragraph,
        )
      ],
    );
  }
}
