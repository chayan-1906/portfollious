import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:time_machine/time_machine.dart';
import 'package:url_launcher/url_launcher.dart';

import '../generated/assets.dart';
import '../globals/global_constant_function.dart';
import '../widgets/web_layout.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({Key key}) : super(key: key);

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  String duration = '';
  LocalDate skywaJoiningDate = LocalDate.dateTime(DateTime(2021, 09, 01));
  bool isLoading = false;

  void calculateTimeDiff() {
    setState(() {
      isLoading = true;
    });
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      final LocalDate today = LocalDate.today();
      final Period diff = today.periodSince(skywaJoiningDate);
      if (mounted) {
        setState(() {
          duration =
              '${diff.years} years ${diff.months} months ${diff.days} days';
          isLoading = false;
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculateTimeDiff();
  }

  @override
  Widget build(BuildContext context) {
    Widget body = Flexible(
      flex: 2,
      fit: FlexFit.tight,
      child: Container(
        height: MediaQuery.of(context).size.height,
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

            /// work
            Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Image.asset(
                          Assets.imagesSkywaTransparentLogo,
                          height: 65.0,
                          width: 65.0,
                        ),
                      ),
                      const Flexible(child: SizedBox(width: 20.0)),
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 1.0,
                          maxHeight: 80.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            /// skywa solutions
                            const Flexible(
                              child: AutoSizeText(
                                'Skywa Solutions',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5.0),

                            /// duration
                            Flexible(child: AutoSizeText(duration)),
                            const SizedBox(height: 5.0),

                            /// location
                            const Flexible(
                              child: AutoSizeText(
                                'Austin, Texas, United States',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    padding: const EdgeInsets.only(left: 29.0),
                    alignment: Alignment.centerLeft,
                    child: const CircleAvatar(radius: 4.0),
                  ),
                  const SizedBox(height: 5.0),

                  /// skywa solutions
                  Container(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 1.5,
                          height: 195.0,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(width: 52.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// software engineer
                            const AutoSizeText(
                              'Software Engineer',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 5.0),

                            /// full-time
                            const AutoSizeText(
                              'Full-time',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 5.0),

                            /// June-2022 - Present
                            const AutoSizeText(
                              'Jun 2022 - Present',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 20.0),

                            /// flutter developer
                            const AutoSizeText(
                              'Flutter Developer',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 5.0),

                            /// internship
                            const AutoSizeText(
                              'Internship',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 5.0),

                            /// Sept-2021 - May-2022
                            const AutoSizeText(
                              'Sept 2021 - May 2022',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 10.0),

                            /// internship certificate
                            GestureDetector(
                              onTap: () async {
                                if (!await launchUrl(Uri.parse(
                                    'https://drive.google.com/file/d/1udP-ehFX7qLiXXNsy-AOHnjaEolnrlV_/view?usp=sharing'))) {
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
                              child: const AutoSizeText(
                                'Skywa Internship Certificate',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    padding: const EdgeInsets.only(left: 29.0),
                    alignment: Alignment.centerLeft,
                    child: const CircleAvatar(radius: 4.0),
                  ),
                  const SizedBox(height: 50.0),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Image.asset(
                          Assets.imagesFlutterLogo,
                          height: 65.0,
                          width: 65.0,
                        ),
                      ),
                      const Flexible(child: SizedBox(width: 20.0)),
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 1.0,
                          maxHeight: 80.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            /// highradius
                            Flexible(
                              child: AutoSizeText(
                                'HighRadius Corporation',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0),

                            /// duration
                            Flexible(child: AutoSizeText('4 months')),
                            SizedBox(height: 5.0),

                            /// location
                            Flexible(
                              child: AutoSizeText(
                                'Bhubaneswar, Odisha, India',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.only(left: 29.0),
                    alignment: Alignment.centerLeft,
                    child: const CircleAvatar(radius: 4.0),
                  ),
                  const SizedBox(height: 5.0),

                  /// highradius
                  Container(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 1.5,
                          height: 100.0,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(width: 52.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10.0),

                            /// automation engineer
                            const AutoSizeText(
                              'Automation Engineer',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 5.0),

                            /// internship
                            const AutoSizeText(
                              'Internship',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 5.0),

                            /// June-2021 - Sept-2021
                            const AutoSizeText(
                              'Jun 2021 - Sept 2021',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 10.0),

                            /// internship certificate
                            GestureDetector(
                              onTap: () async {
                                if (!await launchUrl(Uri.parse(
                                    'https://drive.google.com/file/d/1oJoFBDjiRxSdAjf6JoaRRvjAAJaIgJf7/view?usp=sharing'))) {
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
                              child: const AutoSizeText(
                                'HighRadius Internship Certificate',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 5.0),
                  Container(
                    padding: const EdgeInsets.only(left: 29.0),
                    alignment: Alignment.centerLeft,
                    child: const CircleAvatar(radius: 4.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    return WebLayout(
      mobileLayout: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [body],
            ),
      webLayout: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [body],
            ),
    );
  }
}
