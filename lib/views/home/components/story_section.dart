import 'dart:ui';
import 'package:flutter/material.dart';

import '/constants/palette.dart';
import '/models/models.dart';
import '/widgets/widgets.dart';


class StorySection extends StatelessWidget {
  final UserModel user;
  final List<StoryModel> stories;

  const StorySection({
    Key? key,
    required this.user,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return Container(
      height: 200,
      color: Responsive.isDesktop(context) ? Colors.transparent : Colors.white,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        }),
        child: ListView.builder(
            controller: controller,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: stories.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return StoryTile(
                  isCreateStory: true,
                  story: stories[index],
                  user: user,
                );
              }
              return StoryTile(
                user: user,
                story: stories[index - 1],
              );
            }),
      ),
    );
  }
}

class StoryTile extends StatelessWidget {
  final bool isCreateStory;
  final UserModel user;
  final StoryModel story;

  const StoryTile(
      {Key? key,
      this.isCreateStory = false,
      required this.user,
      required this.story})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(11.0),
            child: Image.network(
              isCreateStory ? user.imageUrl : story.imageUrl,
              width: 110.0,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11.0),
              gradient: Palette.storyGradient,
              boxShadow: Responsive.isDesktop(context)
                  ? [const BoxShadow(color: Colors.black38, offset: Offset(0, 2) , blurRadius: 2.0)]
                  : null),
        ),
        Positioned(
            left: 10,
            bottom: 10,
            child: Text(
              isCreateStory ? 'Add to Story' : story.user.name,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            )),
        isCreateStory
            ? Positioned(
                top: 10.0,
                left: 10.0,
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.add,
                    color: Palette.facebookBlue,
                    size: 30,
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: AvatarIcon(
                  user: story.user,
                  withBorder: true,
                )),
      ],
    );
  }
}
