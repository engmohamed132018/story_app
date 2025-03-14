import 'package:flutter/material.dart';
import 'package:story_app/model/data_model.dart';
import 'package:story_app/utiltis/app_color.dart';
import 'package:story_app/utiltis/app_extensions.dart';
import 'package:story_app/utiltis/app_style.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key, required this.story});
  final Story story;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(story.title, style: MainStyle),
        backgroundColor: kBackColor,
      ),
      body: Text(
        story.content,
        style: MainStyle.copyWith(
          fontSize: 16.toHeight,
          fontWeight: FontWeight.w500,
          wordSpacing: 1.5,
        ),
      ),
    );
  }
}
