import 'package:flutter/material.dart';
import '/constants/palette.dart';

import 'components.dart';

class CreateRoomButton extends StatelessWidget {
  const CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        width: 120.0,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side:  BorderSide(
                width: 2.5,
                style: BorderStyle.solid,
                color: Palette.facebookBlue.withOpacity(0.5),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              )),
          onPressed: () {},
          child: FittedBox(
            child: FlatBtn(
              onPressed: () {},
              title: "Create Room",
              iconData: Icons.video_call,
              iconColor: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
