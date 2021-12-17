import 'package:demo/model/author.dart';

class Event {
  String id;
  String title;
  String date;
  Author author;
  int numOfComment;
  String content;
  String imageUrl;

  Event(this.id, this.title, this.date, this.author, this.numOfComment,
      this.content, this.imageUrl);

  static List<Event> samples = [
    Event(
      '0',
      "White Hourse Tried to 'Lock Down' Ukraine Call Records",
      "Oct 13 2020 18:25 PM",
      Author.samples[0],
      1757,
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      'assets/image/dog1.jpg',
    ),
    Event(
      '1',
      "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain",
      "Sept 26 2019 15:15 PM",
      Author.samples[0],
      1757,
      "Duis porttitor diam ornare tincidunt lobortis. In hac habitasse platea dictumst. Sed non nunc et nisi venenatis fringilla. Curabitur faucibus sapien vel eleifend imperdiet. Phasellus sodales nisi nec leo efficitur, ac placerat urna suscipit. Suspendisse lorem mi, accumsan a risus ut, efficitur maximus ante. Mauris leo ligula, maximus vitae leo sit amet, vestibulum convallis mi. Aliquam tempor elementum porttitor. Maecenas aliquam risus nec risus ornare, sit amet congue diam vestibulum. Nunc ut tempor lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam vitae eros fermentum, placerat mi nec, mattis ex. Ut imperdiet diam a lacus elementum viverra. Aenean eget massa nibh.",
      'assets/image/dog2.jpg',
    ),
    Event(
      '2',
      "Lorem Ipsum",
      "Sept 29 2019 15:15 PM",
      Author.samples[1],
      1757,
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      'assets/image/dog3.jpeg',
    ),
    Event(
      '3',
      "Neque porro quisquam",
      "Jun 26 2019 15:15 PM",
      Author.samples[2],
      1757,
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      'assets/image/dog4.jpg',
    ),
    Event(
      '4',
      "Consectetur",
      "May 05 2019 15:15 PM",
      Author.samples[1],
      1757,
      "Donec dignissim consectetur sapien vitae efficitur. Etiam placerat lobortis sagittis. Suspendisse vitae varius nulla. Aliquam erat volutpat. Sed gravida id velit sed imperdiet. Etiam semper, turpis a faucibus faucibus, metus neque efficitur metus, at finibus eros dui in neque. Maecenas nec laoreet erat.",
      'assets/image/dog1.jpg',
    ),
    Event(
      '5',
      "Neque porro quisquam",
      "Jun 26 2019 15:15 PM",
      Author.samples[2],
      1757,
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      'assets/image/dog4.jpg',
    ),
  ];
}
