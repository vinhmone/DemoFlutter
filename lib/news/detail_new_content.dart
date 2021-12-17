import 'package:demo/news/event_theme.dart';
import 'package:demo/news/share.dart';
import 'package:flutter/material.dart';

class DetailNewContent extends StatefulWidget {
  final String content;
  final int numOfComment;

  const DetailNewContent(
      {Key? key, required this.content, required this.numOfComment})
      : super(key: key);

  @override
  _DetailNewContentState createState() => _DetailNewContentState();
}

class _DetailNewContentState extends State<DetailNewContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 16.0,
        right: 16.0,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          )),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Expanded(child: ShareNews()),
              Text(
                '${widget.numOfComment} comments',
                textAlign: TextAlign.end,
                style: EventTheme.darkTextTheme.headline3,
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            widget.content,
            textAlign: TextAlign.justify,
            style: EventTheme.darkTextTheme.headline2,
          )
        ],
      ),
    );
  }
}
