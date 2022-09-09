import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolliolllus/globals/global_constant_function.dart';
import 'package:portfolliolllus/widgets/social_media_icon.dart';
import 'package:url_launcher/url_launcher.dart';

import '../generated/assets.dart';
import 'drawer_list_tile.dart';

String facebookURL = 'https://www.facebook.com/padmanabha.das.94';
String instagramURL = 'https://www.instagram.com/pdas_1906/';
String githubURL = 'https://github.com/pdas9647';
String linkedInURL = 'https://www.linkedin.com/in/padmanabha-das-59bb2019b/';

class LeftDrawer extends StatelessWidget {
  final void Function({int index}) onItemTap;

  const LeftDrawer({Key key, @required this.onItemTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> drawerItems = [
      'INTRO',
      'ABOUT',
      'EDUCATION',
      'SKILLS',
      'WORK',
      // 'PROJECTS & ACCOMPLISHMENTS',
      'CONTACT',
    ];

    return Container(
      width: 260.0,
      height: double.infinity,
      color: kPrimaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            isMobile
                ? const SizedBox(height: 50.0)
                : const SizedBox(height: 8.0),

            /// profile picture
            const Material(
              elevation: 14.0,
              shape: CircleBorder(),
              color: Colors.transparent,
              child: CircleAvatar(
                backgroundImage: AssetImage(Assets.imagesProfilePicture),
                radius: 80.0,
              ),
            ),
            const SizedBox(height: 10.0),

            /// name
            const Text(
              'Padmanabha Das',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.7,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8.0),

            /// social media
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                /// facebook
                SocialMediaIcon(
                  iconData: FontAwesomeIcons.facebookSquare,
                  onPressed: () async {
                    if (isMobile) Navigator.pop(context);
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
                const SizedBox(width: 8.0),

                /// instagram
                SocialMediaIcon(
                  iconData: FontAwesomeIcons.instagramSquare,
                  onPressed: () async {
                    if (isMobile) Navigator.pop(context);
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
                const SizedBox(width: 8.0),

                /// github
                SocialMediaIcon(
                  iconData: FontAwesomeIcons.githubSquare,
                  onPressed: () async {
                    if (isMobile) Navigator.pop(context);
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
                const SizedBox(width: 8.0),

                /// linkedin
                SocialMediaIcon(
                  iconData: FontAwesomeIcons.linkedinIn,
                  onPressed: () async {
                    if (isMobile) Navigator.pop(context);
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
                const SizedBox(width: 8.0),
              ],
            ),
            const SizedBox(height: 20.0),

            /// drawer items
            for (int i = 0; i < drawerItems.length; i++)
              DrawerListTile(
                title: drawerItems[i],
                index: i,
                onItemTap: onItemTap,
              ),
          ],
        ),
      ),
    );
  }
}
