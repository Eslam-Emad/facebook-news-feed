import 'package:flutter/material.dart';

class BarButton extends StatelessWidget {
  final IconData iconData;
  final double? iconSize;
  final VoidCallback onPressed;

  const BarButton({
    Key? key,
    required this.iconData,
    this.iconSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            iconData,
            size: iconSize ?? 30,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
