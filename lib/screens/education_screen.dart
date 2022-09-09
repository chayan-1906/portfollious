import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../widgets/web_layout.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({Key key}) : super(key: key);

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
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

            /// about
            Container(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Flexible(
                    child: AutoSizeText(
                      'AN ENGINEER BY PASSION',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.systemBlue,
                      ),
                    ),
                  ),
                  Flexible(child: SizedBox(height: 32.0)),
                  Flexible(
                    child: AutoSizeText(
                      'B.TECH IN COMPUTER SCIENCE ENGG.',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Flexible(child: SizedBox(height: 16.0)),
                  Flexible(
                    child: AutoSizeText(
                      '(2018 - 2022)',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
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
      child: Image.asset(Assets.imagesKiitCampus6, fit: BoxFit.fitHeight),
    );

    return WebLayout(
      mobileLayout: Column(
        children: [
          body,
          Flexible(
            child: Image.asset(
              Assets.imagesKiitCampus6,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          const SizedBox(height: 50.0),
        ],
      ),
      webLayout: Row(children: [body, image]),
    );
  }
}
