class News {
  String? title;
  String? link;
  String? pubDate;
  DateTime? date;
  String? description;
  String? author;
  String? image;

  News({
    this.title,
    this.link,
    this.pubDate,
    this.date,
    this.description,
    this.author,
    this.image,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'link': link,
      'date': date?.toIso8601String(),
      'pubDate': pubDate,
      'description': description,
      'author': author,
      'image': image,
    };
  }

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      title: json['title'],
      link: json['link'],
      date: DateTime.tryParse(json['date'] ?? ''),
      pubDate: json['pubDate'],
      description: json['description'],
      author: json['author'],
      image: json['image'],
    );
  }
}
