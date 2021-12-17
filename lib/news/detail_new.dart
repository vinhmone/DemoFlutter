import 'package:demo/model/event.dart';
import 'package:demo/news/detail_new_content.dart';
import 'package:demo/news/detail_news_card.dart';
import 'package:flutter/material.dart';

class DetailNews extends StatefulWidget {
  final String tag;
  final Event event;

  const DetailNews({Key? key, required this.event, this.tag = ""})
      : super(key: key);

  @override
  _DetailNewsState createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  child: DetailNewsCard(
                    event: widget.event,
                    tag: widget.tag,
                  ),
                ),
                DetailNewContent(
                  content: widget.event.content,
                  numOfComment: widget.event.numOfComment,
                ),
              ],
            ),
          )),
    );
  }
}

/*
Hero(
          tag: widget.tag,
          child: Image(
            image: AssetImage(widget.event.imageUrl),
          ),
        ),
 */
