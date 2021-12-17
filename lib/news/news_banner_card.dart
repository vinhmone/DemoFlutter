import 'package:demo/model/event.dart';
import 'package:demo/news/author_card.dart';
import 'package:demo/news/event_theme.dart';
import 'package:flutter/material.dart';

import 'detail_new.dart';

class NewBannerCard extends StatefulWidget {
  final Event event;

  const NewBannerCard({Key? key, required this.event}) : super(key: key);

  @override
  _NewBannerCardState createState() => _NewBannerCardState();
}

class _NewBannerCardState extends State<NewBannerCard> {
  @override
  Widget build(BuildContext context) {
    final String tag = '${widget.event.id}banner';
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailNews(event: widget.event, tag: tag);
        }));
      },
      child: Card(
        elevation: 6.0,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Stack(
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
                  top: 0,
                  right: 0,
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
                      Flexible(
                        child: Text(
                          widget.event.title,
                          style: EventTheme.lightTextTheme.headline1,
                          maxLines: 3,
                        ),
                      ),
                      CardAuthor(author: widget.event.author),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
