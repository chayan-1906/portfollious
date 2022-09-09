import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final int index;
  final void Function({int index}) onItemTap;

  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.index,
    @required this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onItemTap(index: index);
        },
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: 24.0,
          ),
          title: Text(title, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
