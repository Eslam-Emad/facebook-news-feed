import 'package:flutter/material.dart';
import '/models/models.dart';
import '/widgets/widgets.dart';

class UserTile extends StatelessWidget {
  final UserModel user;

  const UserTile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AvatarIcon(user: user ),
            const SizedBox(width: 5.0),
            Text(user.name , style: const TextStyle(fontSize: 16.0 , fontWeight: FontWeight.w600 , ),)
          ],
        ),
      ),
    );
  }
}
