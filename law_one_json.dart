class Book {
  final int id;
  final String title;
  final String author;
  final String subtitle;

  const Book({
    required this.id,
    required this.author,
    required this.title,
    required this.subtitle,
  });

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    id: json['id'],
    author: json['author'],
    title: json['title'],
    subtitle: json['subtitle'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'author': author,
    'subtitle': subtitle,
  };
}