import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContactMeSocialMediaWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final String text;
  final Function onTap;

  const ContactMeSocialMediaWidget({
    Key key,
    @required this.title,
    @required this.iconData,
    @required this.text,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(child: Icon(iconData, size: 30.0)),
              const Flexible(child: SizedBox(width: 10.0)),
              Flexible(
                flex: 5,
                child: AutoSizeText(
                  text,
                  softWrap: true,
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
