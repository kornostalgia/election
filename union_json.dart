class Union {
  final int id;
  final String title;
  final String author;
  final String subtitle;

  const Union({
    required this.id,
    required this.author,
    required this.title,
    required this.subtitle,
  });

  factory Union.fromJson(Map<String, dynamic> json) => Union(
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