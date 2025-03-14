import 'package:flutter/material.dart';
import 'package:story_app/screen/details_screen.dart';
import 'package:story_app/utiltis/app_extensions.dart';

import '../../model/data_model.dart';
import '../../utiltis/app_color.dart';
import '../../utiltis/app_style.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key, required this.story});
  final Story story;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContentScreen(story: story)),
        );
      },
      child: Card(
        color: kBackColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.toWidth),
        ),
        child: SizedBox(
          height: 100.toHeight,
          child: Center(child: Text(story.title, style: MainStyle)),
        ),
      ),
    );
  }
}
