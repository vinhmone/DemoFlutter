import 'package:demo/model/author.dart';
import 'package:demo/news/event_theme.dart';
import 'package:demo/news/rectangle_avatar.dart';
import 'package:flutter/material.dart';

class CardAuthor extends StatelessWidget {
  final Author author;
  final bool isShowDesc;

  const CardAuthor({Key? key, required this.author, this.isShowDesc = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RectangleAvatar(
          imageUrl: author.imageUrl,
          widthPercentage: 0.05,
          ratio: 1 / 1,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                author.name,
                style: EventTheme.lightTextTheme.headline3,
              ),
              (isShowDesc)
                  ? Text(
                      author.description,
                      style: EventTheme.lightTextTheme.headline6,
                    )
                  : Container()
            ],
          ),
        ),
      ],
    );
  }
}
