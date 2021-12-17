import 'package:flutter/material.dart';

class RectangleAvatar extends StatelessWidget {
  final double widthPercentage;
  final double ratio;
  final String imageUrl;

  const RectangleAvatar(
      {Key? key,
      required this.imageUrl,
      required this.widthPercentage,
      required this.ratio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: MediaQuery.of(context).size.height * widthPercentage,
        child: AspectRatio(
          aspectRatio: ratio,
          child: Image(
            image: AssetImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
