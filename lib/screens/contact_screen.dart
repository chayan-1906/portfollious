import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:portfolliolllus/widgets/contact_me_social_media_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../generated/assets.dart';
import '../globals/global_constant_function.dart';
import '../widgets/left_drawer.dart';
import '../widgets/web_layout.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// contact me
                  const Flexible(
                    child: AutoSizeText(
                      'CONTACT ME',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.systemBlue,
                      ),
                    ),
                  ),
                  const Flexible(child: SizedBox(height: 30.0)),

                  /// email
                  ContactMeSocialMediaWidget(
                    title: 'EMAIL',
                    iconData: Icons.email_rounded,
                    text: 'padmanabhadas9647@gmail.com',
                    onTap: () async {
                      if (!await launchUrl(
                          Uri.parse('mailto:padmanabhadas9647@gmail.com'))) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'Please try again after sometime',
                            ),
                            backgroundColor: kErrorColor,
                          ),
                        );
                      }
                    },
                  ),

                  /// facebook
                  ContactMeSocialMediaWidget(
                    title: 'FACEBOOK',
                    iconData: FontAwesomeIcons.facebookSquare,
                    text: facebookURL,
                    onTap: () async {
                      if (!await launchUrl(Uri.parse(facebookURL))) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'Please try again after sometime',
                            ),
                            backgroundColor: kErrorColor,
                          ),
                        );
                      }
                    },
                  ),

                  /// instagram
                  ContactMeSocialMediaWidget(
                    title: 'INSTAGRAM',
                    iconData: FontAwesomeIcons.instagramSquare,
                    text: instagramURL,
                    onTap: () async {
                      if (!await launchUrl(Uri.parse(instagramURL))) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'Please try again after sometime',
                            ),
                            backgroundColor: kErrorColor,
                          ),
                        );
                      }
                    },
                  ),

                  /// github
                  ContactMeSocialMediaWidget(
                    title: 'GITHUB',
                    iconData: FontAwesomeIcons.githubSquare,
                    text: githubURL,
                    onTap: () async {
                      if (!await launchUrl(Uri.parse(githubURL))) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'Please try again after sometime',
                            ),
                            backgroundColor: kErrorColor,
                          ),
                        );
                      }
                    },
                  ),

                  /// linkedIn
                  ContactMeSocialMediaWidget(
                    title: 'LINKEDIN',
                    iconData: FontAwesomeIcons.linkedinIn,
                    text: linkedInURL,
                    onTap: () async {
                      if (!await launchUrl(Uri.parse(linkedInURL))) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'Please try again after sometimes',
                            ),
                            backgroundColor: kErrorColor,
                          ),
                        );
                      }
                    },
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
