import 'package:demo/model/event.dart';
import 'package:demo/news/author_card.dart';
import 'package:demo/news/event_theme.dart';
import 'package:flutter/material.dart';

class DetailNewsCard extends StatefulWidget {
  final String tag;
  final Event event;

  const DetailNewsCard({Key? key, required this.event, required this.tag}) : super(key: key);

  @override
  _DetailNewsCard createState() => _DetailNewsCard();
}

class _DetailNewsCard extends State<DetailNewsCard> {
  @override
  Widget build(BuildContext context) {
    final String tag = widget.tag;
    return Stack(
      children: [
        Positioned.fill(
          child: Hero(
            tag: tag,
            child: Image(
              image: AssetImage(widget.event.imageUrl),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned(
          top: 14.0,
          right: 14.0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            iconSize: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.event.date,
                style: EventTheme.lightTextTheme.headline6,
                maxLines: 1,
              ),
              Flexible(
                child: Text(
                  widget.event.title,
                  style: EventTheme.lightTextTheme.headline1,
                  maxLines: 3,
                ),
              ),
              CardAuthor(
                author: widget.event.author,
                isShowDesc: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
