import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/constants/palette.dart';
import '/models/models.dart';
import '/widgets/user_tile.dart';


class OptionsList extends StatelessWidget {
  final List<List> _optionsList =  [
    [FontAwesomeIcons.userShield, Colors.deepPurple, 'COVID-19 Info Center'],
    [FontAwesomeIcons.users, Colors.cyan, 'Friends'],
    [FontAwesomeIcons.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [FontAwesomeIcons.flag, Colors.orange, 'Pages'],
    [FontAwesomeIcons.store, Palette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [FontAwesomeIcons.calendar, Colors.red, 'Events'],
  ];

  final UserModel user;

  OptionsList({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280.0),
      child: ListView.builder(
        itemCount: _optionsList.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: UserTile(user: user),
            );
          }
          final List option = _optionsList[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: _Option(
              icon: option[0],
              color: option[1],
              label: option[2],
            ),
          );
        },
      ),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const _Option({
    Key? key,
    required this.icon,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(icon, size: 38.0, color: color),
          const SizedBox(width: 20.0),
          Flexible(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16.0 , fontWeight: FontWeight.w600,),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
