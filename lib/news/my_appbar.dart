import 'package:demo/news/event_theme.dart';
import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MyAppbar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              'The New York Times',
              style: EventTheme.darkTextTheme.headline1,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 24,
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
