class Post {
  Post({
    required this.title,
    required this.description,
    required this.subtitle,
    required this.subdescription,
    required this.image,
    required this.author,
    required this.date,
  });
  String title;
  String description;
  List<String> subtitle;
  List<String> subdescription;
  String image;
  String author;
  DateTime date;
}
