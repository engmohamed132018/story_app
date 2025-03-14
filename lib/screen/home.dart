import 'package:flutter/material.dart';
import 'package:story_app/model/data_model.dart';
import 'package:story_app/utiltis/app_color.dart';
import 'package:story_app/utiltis/app_extensions.dart';
import 'package:story_app/utiltis/app_string.dart';
import 'package:story_app/utiltis/app_style.dart';

import 'widgets/story_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stories',
          style: MainStyle.copyWith(fontSize: 20.toHeight),
        ),
        centerTitle: true,
        backgroundColor: kBackColor,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => StoryWidget(story: kList[index]),

        separatorBuilder:
            (context, index) => Divider(color: kBwordColor, thickness: 4),
        itemCount: kList.length,
      ),
    );
  }
}
