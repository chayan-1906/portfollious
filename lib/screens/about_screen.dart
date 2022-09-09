import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolliolllus/widgets/web_layout.dart';

import '../generated/assets.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                      'I\'M FROM',
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
                      'MURSHIDABAD, WEST BENGAL',
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
                      'A historical city in the Indian state of West Bengal, located on the eastern bank of the Bhagirathi River.\n\nEver since from childhood I am habitant of Murshidabad.',
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
      child: Image.asset(Assets.imagesHazarduariPalace, fit: BoxFit.fitHeight),
    );

    return WebLayout(
      mobileLayout: Column(
        children: [
          body,
          Flexible(
            child: Image.asset(
              Assets.imagesHazarduariPalace,
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
