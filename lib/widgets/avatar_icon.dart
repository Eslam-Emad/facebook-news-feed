import 'package:flutter/material.dart';
import '/constants/palette.dart';
import '/models/models.dart';

class AvatarIcon extends StatelessWidget {
  final UserModel user;
  final bool withBorder;
  final bool isOnline;

  const AvatarIcon(
      {Key? key,
      required this.user,
      this.withBorder = false,
      this.isOnline = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: withBorder ? Palette.facebookBlue : Colors.white,
            child: CircleAvatar(
              radius:(withBorder && !isOnline)? 17.0:20.0,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(user.imageUrl),
            ),
          ),
        ),
        isOnline
            ? Positioned(
                bottom: 10.0,
                right: 0.0,
                child: Container(
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                      color: Palette.online,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.7, color: Colors.white),
                  ),
                ))
            : const SizedBox(),
      ],
    );
  }
}
