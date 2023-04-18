class Cook {
  final int id;
  final String title;
  final String author;
  final String subtitle;

  const Cook({
    required this.id,
    required this.author,
    required this.title,
    required this.subtitle,
  });

  factory Cook.fromJson(Map<String, dynamic> json) => Cook(
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