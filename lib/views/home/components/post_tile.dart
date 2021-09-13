import 'package:facebook_feed/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/constants/palette.dart';
import '/models/models.dart';
import '/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final PostModel post;

  const PostTile({Key? key, required this.post}) : super(key: key);

  bool _isUniImage(List<String?> imageUrls) => imageUrls.length == 1;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
        margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(post: post),
            const SizedBox(height: 4.2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(post.caption),
            ),
            const SizedBox(height: 8.0),
            post.imageUrls != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Center(
                      child: _isUniImage(post.imageUrls!)
                          ? GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => CustomDialog(
                                    children: [
                                      Expanded(
                                        child: Image.network(
                                          post.imageUrls![0],
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                              child: Image.network(post.imageUrls![0]))
                          : SizedBox(
                              height: size.height * 0.6,
                              child: PhotoGrid(
                                imageUrls: post.imageUrls,
                                onImageClicked: (index) {
                                  print(index);
                                },
                                onExpandClicked: () {},
                                maxImages: 4,
                              ),
                            ),
                    ),
                  )
                : const SizedBox.shrink(),
            PostReach(post: post),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final PostModel post;

  const _Header({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        children: [
          AvatarIcon(user: post.user),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.user.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text("${post.timeAgo} Ago .",
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12)),
                    const Icon(
                      Icons.public,
                      size: 13,
                      color: Colors.grey,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz, size: 20, color: Colors.grey),
        ],
      ),
    );
  }
}

class PostReach extends StatelessWidget {
  final PostModel post;

  const PostReach({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
              padding: const EdgeInsets.all(4.0),
              decoration: const BoxDecoration(
                color: Palette.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 10.0,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 5.0, 6.0, 5.0),
              padding: const EdgeInsets.all(4.0),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                FontAwesomeIcons.heart,
                color: Colors.white,
                size: 10.0,
              ),
            ),
            Expanded(
                child: Text(
              post.likes.toString(),
              style: TextStyle(color: Colors.grey[600]),
            )),
            Text(
              "${post.comments} comments",
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(width: 8.0),
            Text(
              "${post.shares} shares",
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(width: 8.0),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PostButton(
              onTap: () {},
              icon: const Icon(
                Icons.thumb_up_alt_outlined,
                size: 20,
              ),
              label: 'Like',
            ),
            PostButton(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) =>
                         CustomDialog(withClose: false, children: [
                          const CommentTile(
                              user: currentUser, comment: "Wow that nice :)"),
                          CommentTile(user: onlineUsers[5], comment: "yep (;"),
                        ]));
              },
              icon: const Icon(
                FontAwesomeIcons.commentAlt,
                size: 18,
              ),
              label: 'comments',
            ),
            PostButton(
              onTap: () {},
              icon: const Icon(
                FontAwesomeIcons.share,
                size: 18,
              ),
              label: 'share',
            ),
          ],
        )
      ],
    );
  }
}


class PostButton extends StatelessWidget {
  final VoidCallback onTap;
  final Icon icon;
  final String label;

  const PostButton({
    Key? key,
    required this.onTap,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          height: 30.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 5.0),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
