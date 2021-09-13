import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/models/models.dart';
import '/widgets/widgets.dart';

class CommentTile extends StatelessWidget {
  final String comment;
  final UserModel user;
  final bool isOnline;

  const CommentTile(
      {Key? key,
      required this.comment,
      required this.user,
      this.isOnline = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 1.0),
      child: Column(
        children: [
          Row(
            children: [
              AvatarIcon(user: user, isOnline: isOnline),
              const SizedBox(width: 5.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        comment,
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "2min",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              const Text(
                "Likes",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              const Text(
                "Replay",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
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
            ],
          ),
        ],
      ),
    );
  }
}
