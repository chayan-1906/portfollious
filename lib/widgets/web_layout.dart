import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  final Widget webLayout;
  final Widget mobileLayout;

  const WebLayout({Key key, this.webLayout, this.mobileLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 600) {
        return webLayout;
      } else {
        return mobileLayout;
      }
    });
  }
}
