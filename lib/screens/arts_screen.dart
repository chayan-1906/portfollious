import 'package:flutter/material.dart';

class ArtsScreen extends StatefulWidget {
  const ArtsScreen({Key key}) : super(key: key);

  @override
  State<ArtsScreen> createState() => _ArtsScreenState();
}

class _ArtsScreenState extends State<ArtsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('ARTS'),
    );
  }
}
