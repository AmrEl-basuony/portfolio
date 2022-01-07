import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconsColumn extends StatelessWidget {
  const CustomIconsColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                html.window.open(
                  'https://github.com/AmrEl-basuony',
                  '_blank',
                );
              },
              tooltip: 'Github',
              icon: const FaIcon(FontAwesomeIcons.github),
            ),
            IconButton(
              onPressed: () {
                html.window.open(
                  'https://www.linkedin.com/in/amr-elbasuony-8790901bb/',
                  '_blank',
                );
              },
              tooltip: 'Linkedin',
              icon: const FaIcon(FontAwesomeIcons.linkedinIn),
            ),
            IconButton(
              onPressed: () {
                html.window.open(
                  'https://wa.me/+201026901603',
                  '_blank',
                );
              },
              tooltip: 'Whatsapp',
              icon: const FaIcon(FontAwesomeIcons.whatsapp),
            ),
            IconButton(
              onPressed: () {
                Clipboard.setData(const ClipboardData(text: '+201026901603'));
                Fluttertoast.showToast(
                  msg: 'Copied to clipboard',
                  webShowClose: true,
                  timeInSecForIosWeb: 2,
                  webBgColor: '#FFAA4C',
                  webPosition: 'center',
                  textColor: Colors.black,
                  fontSize: 16,
                );
              },
              tooltip: 'Phone',
              icon: const FaIcon(FontAwesomeIcons.phone),
            ),
            IconButton(
              onPressed: () {
                Clipboard.setData(
                  const ClipboardData(text: 'amrahmedelbasuony@gmail.com'),
                );
                Fluttertoast.showToast(
                  msg: 'Copied to clipboard',
                  webShowClose: true,
                  timeInSecForIosWeb: 2,
                  webBgColor: '#FFAA4C',
                  webPosition: 'center',
                  textColor: Colors.black,
                  fontSize: 16,
                );
              },
              tooltip: 'Mail',
              icon: const FaIcon(FontAwesomeIcons.at),
            ),
          ],
        ),
      );
}
