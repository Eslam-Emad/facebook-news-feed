import 'package:flutter/material.dart';
import '/constants/palette.dart';
import '/widgets/widgets.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      indicatorPadding: EdgeInsets.zero,
      overlayColor: MaterialStateProperty.all(Palette.facebookBlue) ,
      indicator:Responsive.isDesktop(context)?null :  const BoxDecoration(
          border: Border( top:BorderSide(
        color: Palette.facebookBlue,
        width: 3.0,
      ))),
      tabs: icons.asMap().map((index, icon) => MapEntry(
              index,  Tab(icon: Icon( icon, size: 30.0,
                  color: index == selectedIndex
                      ? Palette.facebookBlue
                      : Colors.black45,
                ),))).values.toList(),
    );
  }
}
