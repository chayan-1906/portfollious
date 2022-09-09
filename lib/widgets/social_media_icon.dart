import 'package:flutter/material.dart';

import '../globals/global_constant_function.dart';

class SocialMediaIcon extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  const SocialMediaIcon({
    Key key,
    @required this.iconData,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(iconData, color: Colors.white),
    );
  }
}
