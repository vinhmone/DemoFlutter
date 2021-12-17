import 'package:demo/model/event.dart';
import 'package:demo/news/detail_new.dart';
import 'package:demo/news/event_theme.dart';
import 'package:demo/news/rectangle_avatar.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final Event event;

  const NewsCard({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tag = '${event.id}card';
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailNews(event: event, tag: tag);
        }));
      },
      child: Row(
        children: [
          Hero(
            tag: tag,
            child: RectangleAvatar(
              imageUrl: event.imageUrl,
              widthPercentage: 0.15,
              ratio: 4 / 3,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.title,
                  style: EventTheme.darkTextTheme.headline3,
                  maxLines: 3,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  event.date,
                  style: EventTheme.darkTextTheme.headline6,
                  maxLines: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

// @override
// Widget build(BuildContext context) {
//   return ListTile(
//     onTap: () {},
//     contentPadding: EdgeInsets.zero,
//     title: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           event.title,
//           style: EventTheme.darkTextTheme.headline3,
//           maxLines: 3,
//         ),
//         const SizedBox(
//           height: 6,
//         ),
//         Text(
//           event.date,
//           style: EventTheme.darkTextTheme.headline6,
//           maxLines: 1,
//         )
//       ],
//     ),
//     leading: Hero(
//         tag: '',
//         child: RectangleAvatar(
//           imageUrl: event.imageUrl,
//           widthPercentage: 0.15,
//           ratio: 1/1,
//         ),
//     ),
//   );
// }
}
