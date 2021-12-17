import 'package:flutter/material.dart';
import 'event_theme.dart';

class NavEvents extends StatelessWidget {
  final String title;

  const NavEvents({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: EventTheme.darkTextTheme.headline2,
          ),
        ),
        InkWell(
          child: Text(
            'Show all',
            style: EventTheme.darkTextTheme.headline3,
          ),
        ),
      ],
    );
  }
}
