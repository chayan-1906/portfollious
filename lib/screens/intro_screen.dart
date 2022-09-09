import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolliolllus/generated/assets.dart';
import 'package:portfolliolllus/globals/global_constant_function.dart';
import 'package:portfolliolllus/widgets/web_layout.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    Widget body = Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Stack(
          children: [
            /// background
            Positioned(
              bottom: 0.0,
              child: Opacity(
                opacity: 0.6,
                child: Image.asset(Assets.imagesFooter, fit: BoxFit.cover),
              ),
            ),

            /// introduction
            Container(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Flexible(
                    child: AutoSizeText(
                      'HEY THERE, I\'M',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.systemBlue,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Flexible(child: SizedBox(height: 20.0)),
                  Flexible(
                    child: AutoSizeText(
                      'PADMANABHA DAS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                  Flexible(child: SizedBox(height: 16.0)),
                  Flexible(
                    child: AutoSizeText(
                      'KIIT UNIVERSITY | MOBILE APPLICATION DEVELOPER (ANDROID & FLUTTER)',
                      softWrap: true,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    Widget image = SizedBox(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height,
      child: Image.asset(Assets.imagesProfilePicture, fit: BoxFit.fitHeight),
    );

    return WebLayout(
      mobileLayout: Column(
        children: [
          body,
          Flexible(
            child: Image.asset(
              Assets.imagesProfilePicture,
              fit: BoxFit.fitHeight,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
      webLayout: Row(children: [body, image]),
    );
  }
}
