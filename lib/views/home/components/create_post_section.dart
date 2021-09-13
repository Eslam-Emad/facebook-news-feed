import 'package:flutter/material.dart';
import '/models/models.dart';
import '/views/home/components/flat_button.dart';
import '/widgets/widgets.dart';

class CreatePostSection extends StatelessWidget {
  final UserModel currentUser;

  const CreatePostSection({Key? key, required this.currentUser})
      : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        color: Colors.white,
        height: size.height * 0.15,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(currentUser.imageUrl),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'What\'s on your mind',
                        border: InputBorder.none),
                  ))
                ],
              ),
            ),
            const Divider(height: 10.0, thickness: 0.7),
            SizedBox(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatBtn(
                    onPressed: () {},
                    iconData: Icons.videocam,
                    title: 'Live',
                    iconColor: Colors.red,
                  ),
                  const VerticalDivider(width: 8.0),
                  FlatBtn(
                    onPressed: () {},
                    iconData: Icons.photo_library,
                    title: 'Photo',
                    iconColor: Colors.green,
                  ),
                  const VerticalDivider(width: 8.0),
                  FlatBtn(
                    onPressed: () {},
                    iconData: Icons.video_call,
                    title: 'Room',
                    iconColor: Colors.purple,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
