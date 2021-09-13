import 'package:flutter/material.dart';

import '/models/models.dart';
import '/widgets/user_tile.dart';

class ContactSection extends StatelessWidget {
  final List<UserModel> users;

  const ContactSection({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'Contacts',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600],
                ),
              )),
              Icon(Icons.search, color: Colors.grey[600]),
              const SizedBox(width: 5.0),
              Icon(Icons.more_horiz, color: Colors.grey[600]),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return UserTile(user: users[index]);
                }),
          )
        ],
      ),
    );
  }
}
