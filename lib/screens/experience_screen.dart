import 'package:flutter/material.dart';
import '../utility/constants.dart';

class ExperienceScreen extends StatelessWidget {
  final Constants constants = Constants();
  ExperienceScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: constants.header,
          ),
          Text(
            '''
I have worked on multiple projects that required knowledge of consuming APIs and dealing with local and cloud storage like firebase \nand currently working as a freelancer on Upwork.''',
            style: constants.paragraph,
          )
        ],
      );
}
