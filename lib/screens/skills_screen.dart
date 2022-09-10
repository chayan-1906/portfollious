import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../widgets/web_layout.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({Key key}) : super(key: key);

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
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

            /// skills
            Container(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// android app development
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: const BoxDecoration(
                              color: Colors.black87,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Flexible(child: SizedBox(width: 20.0)),
                        Flexible(
                          child: Image.asset(
                            Assets.imagesAndroidIcon,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Flexible(child: SizedBox(width: 20.0)),
                        const Flexible(
                          flex: 4,
                          child: AutoSizeText(
                            'Android App Development',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),

                  /// flutter app development
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: const BoxDecoration(
                              color: Colors.black87,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Flexible(child: SizedBox(width: 20.0)),
                        Flexible(
                          child: Image.asset(
                            Assets.imagesFlutterLogo,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Flexible(child: SizedBox(width: 20.0)),
                        const Flexible(
                          flex: 4,
                          child: AutoSizeText(
                            'Flutter App Development',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),

                  /// ui automation
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: const BoxDecoration(
                              color: Colors.black87,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Flexible(child: SizedBox(width: 20.0)),
                        Flexible(
                          child: Image.asset(
                            Assets.imagesAutomationTestingIcon,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Flexible(child: SizedBox(width: 20.0)),
                        const Flexible(
                          flex: 4,
                          child: AutoSizeText(
                            'Web UI Automation Testing',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),

                  /// spring
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: const BoxDecoration(
                              color: Colors.black87,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Flexible(child: SizedBox(width: 20.0)),
                        Flexible(
                          child: Image.asset(
                            Assets.imagesSpringBootIcon,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Flexible(child: SizedBox(width: 20.0)),
                        const Flexible(
                          flex: 4,
                          child: AutoSizeText(
                            'Spring Boot & Spring MVC',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    return WebLayout(
      mobileLayout: Column(children: [body]),
      webLayout: Row(children: [body]),
    );
  }
}
