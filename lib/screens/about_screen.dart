import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../utility/Constants.dart';

class AboutScreen extends StatelessWidget {
  final Constants constants = Constants();
  AboutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amr Ahmed El-basuony',
            style: constants.header,
          ),
          AnimatedTextKit(
            repeatForever: true,
            pause: const Duration(seconds: 2),
            animatedTexts: [
              TyperAnimatedText(
                'Flutter developer.',
                textStyle: constants.subHeader,
              ),
              TyperAnimatedText(
                'Cross platform.',
                textStyle: constants.subHeader,
              ),
              TyperAnimatedText(
                'Freelancer.',
                textStyle: constants.subHeader,
              ),
            ],
          ),
          Text(
            'About me',
            style: constants.subHeader,
          ),
          Text(
            '''
I am a flutter developer for more than a year,\nspecialize in integrating APIs into apps and creating UIs according to design,\nlove to take on new challenges and solve problems,\nlooking for new projects to broaden my skills and gain new experiences.''',
            style: constants.paragraph,
          )
        ],
      );
}
