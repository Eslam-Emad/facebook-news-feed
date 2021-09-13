import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/constants/palette.dart';
import '/models/models.dart';
import '/widgets/widgets.dart';


class CustomWebAppBar extends StatelessWidget {
  final UserModel currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomWebAppBar({
    Key? key,
    required this.currentUser,
    required this.icons,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 65.0,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black45,
          blurRadius: 4.0,
          offset: Offset(0, 2),
        )
      ]),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "facebook",
              style: TextStyle(
                color: Palette.facebookBlue.withOpacity(0.8),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
          ),
          SizedBox(
            width: 600,
            child: CustomTabBar(
              icons: icons,
              onTap: onTap,
              selectedIndex: selectedIndex,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                UserTile(user: currentUser),
                const SizedBox(width: 8.0),
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
          )
        ],
      ),
    );
  }
}
