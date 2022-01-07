import 'package:flutter/material.dart';
import '../widgets/custom_flip_card.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GridView(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: size.width / 2,
      ),
      children: [
        CustomFlipCard(
          'Chat app',
          '''
A chat app with text, audio and video chat, built using firebase''',
        ),
        CustomFlipCard(
          'Quran app',
          'A Quran app using APIs to get its data',
        ),
        CustomFlipCard(
          'Weather app',
          'A weather app using APIs to get data with geolocation',
        ),
        CustomFlipCard(
          'Portfolio Web app',
          '''
A portfolio web page displaying all my social links and projects''',
        ),
      ],
    );
  }
}
