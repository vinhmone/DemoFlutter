class Author {
  String name;
  String description;
  String imageUrl;

  Author(this.name, this.description, this.imageUrl);

  static List<Author> samples = [
    Author("Tran Dinh Vinh", "Profession", 'assets/image/avatar1.png'),
    Author("Chau Bac Ho", "Developer", 'assets/image/image2.png'),
    Author("Trump", "President", 'assets/image/avatar3.jpg'),
  ];
}
