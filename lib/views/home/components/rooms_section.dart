import 'dart:ui';
import 'package:flutter/material.dart';

import '/models/models.dart';
import '/widgets/widgets.dart';
import 'components.dart';

class RoomsSection extends StatelessWidget {
  final List<UserModel> onlineUsers;

  const RoomsSection({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = Responsive.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0))
          : null,
      child: Container(
        height: size.height * 0.08,
        color: Colors.white,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          }),
          child: ListView.builder(
              itemCount: onlineUsers.length + 1,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) return const CreateRoomButton();
                return Container(margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    child: AvatarIcon(user: onlineUsers[index - 1], isOnline: true));
              }),
        ),
      ),
    );
  }
}
