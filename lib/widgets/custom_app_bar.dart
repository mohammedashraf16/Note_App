import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        AnimatedTextKit(animatedTexts: [
          TypewriterAnimatedText(title, textStyle: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
            speed: const Duration(milliseconds: 500),
          ),

        ],
          totalRepeatCount: Duration.millisecondsPerSecond,
          pause: const Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
        const Spacer(),
        CustomIcon(
        icon: icon,
        )
      ],
    );
  }
}


