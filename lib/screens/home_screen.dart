import 'package:flutter/material.dart';
import 'package:portfolliolllus/screens/about_screen.dart';
import 'package:portfolliolllus/screens/contact_screen.dart';
import 'package:portfolliolllus/screens/education_screen.dart';
import 'package:portfolliolllus/screens/intro_screen.dart';
import 'package:portfolliolllus/screens/skills_screen.dart';
import 'package:portfolliolllus/screens/work_screen.dart';
import 'package:portfolliolllus/widgets/left_drawer.dart';
import 'package:portfolliolllus/widgets/web_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  BuildContext context;

  void onItemTap({int index}) {
    _pageController.jumpToPage(index);
    if (MediaQuery.of(context).size.width < 600) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    Widget body = PageView(
      physics: MediaQuery.of(context).size.width < 600
          ? null
          : const NeverScrollableScrollPhysics(),
      controller: _pageController,
      scrollDirection: Axis.vertical,
      children: const [
        IntroScreen(),
        AboutScreen(),
        EducationScreen(),
        SkillsScreen(),
        WorkExperienceScreen(),
        // PROJECTS & ACCOMPLISHMENTS
        ContactScreen(),
      ],
    );
    LeftDrawer leftDrawer = LeftDrawer(onItemTap: onItemTap);
    return WebLayout(
      mobileLayout: Scaffold(
        drawer: leftDrawer,
        body: body,
        appBar: AppBar(title: const Text('Padmanabha\'s Personal Portfolio')),
      ),
      webLayout: Scaffold(
        body: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              leftDrawer,
              Flexible(flex: 1, fit: FlexFit.tight, child: body),
            ],
          ),
        ),
      ),
    );
  }
}
