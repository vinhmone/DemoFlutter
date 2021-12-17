import 'package:flutter/material.dart';

class ShareNews extends StatelessWidget {
  const ShareNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.facebook,
              size: 14.0,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.facebook,
              size: 14.0,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mail,
              size: 14.0,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: 14.0,
            )),
      ],
    );
  }
}
