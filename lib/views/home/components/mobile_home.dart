import 'package:facebook_feed/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/constants/palette.dart';
import '/data/data.dart';
import '/widgets/widgets.dart';

import 'components.dart';

class MobileHome extends StatelessWidget {
  final TrackingScrollController scrollController;
  final List<PostModel> posts;

  const MobileHome({
    Key? key,
    required this.scrollController,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverAppBar(
          elevation: 0.0,
          floating: true,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Palette.facebookBlue.withOpacity(0.8),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          actions: [
            BarButton(
              iconData: FontAwesomeIcons.search,
              onPressed: () {},
              iconSize: 20,
            ),
            BarButton(
              iconData: FontAwesomeIcons.facebookMessenger,
              onPressed: () {},
              iconSize: 25,
            ),
          ],
        ),
        const SliverToBoxAdapter(
          child: CreatePostSection(currentUser: currentUser),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          sliver: SliverToBoxAdapter(
            child: RoomsSection(onlineUsers: onlineUsers),
          ),
        ),
        SliverToBoxAdapter(
            child: StorySection(user: currentUser, stories: stories)),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return PostTile(post: posts[index]);
          },
          childCount: posts.length,
        ))
      ],
    );
  }
}
