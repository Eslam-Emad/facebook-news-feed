import 'package:facebook_feed/models/models.dart';
import 'package:flutter/material.dart';
import '/widgets/widgets.dart';
import '/data/data.dart';

import 'components.dart';

class WebHome extends StatelessWidget {
  final TrackingScrollController scrollController;
  final List<PostModel> posts;

  const WebHome({
    Key? key,
    required this.scrollController,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: OptionsList(user: currentUser)),
        ),
        const Spacer(),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    sliver: SliverToBoxAdapter(
                        child:
                            StorySection(user: currentUser, stories: stories))),
                const SliverToBoxAdapter(
                  child: CreatePostSection(currentUser: currentUser),
                ),
                const SliverPadding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  sliver: SliverToBoxAdapter(
                    child: RoomsSection(onlineUsers: onlineUsers),
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return PostTile(post: posts[index]);
                  },
                  childCount: posts.length,
                ))
              ],
            )),
        const Spacer(),
        const Expanded(
          flex: 2,
          child: Padding(
              padding: EdgeInsets.all(12.0),
              child: ContactSection(users: onlineUsers)),
        )
      ],
    );
  }
}
