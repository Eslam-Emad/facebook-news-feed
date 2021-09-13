import 'package:flutter/material.dart';

class FlatBtn extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color? iconColor;
  final VoidCallback onPressed;

  const FlatBtn(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.onPressed,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(children: [Icon(iconData, color: iconColor ?? Colors.black), Text(title)]),
    );
  }
}
