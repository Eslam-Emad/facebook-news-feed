import 'package:flutter/material.dart';
import 'package:facebook_feed/constants/palette.dart';


class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    this.radius = 8,
    required this.children,
    this.withClose = true,
  }) : super(key: key);

  final double radius;
  final List<Widget> children;
  final bool withClose;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: Column(
        children: [
          ...children,
          withClose?TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              child: const Text(
                "CLOSE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Palette.facebookBlue,
                ),
              ),
            ),
          ):const SizedBox.shrink(),
        ],
      ),
    );
  }
}
