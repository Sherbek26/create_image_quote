class QuoteModel {
  QuoteModel({
    required this.id,
    required this.content,
    required this.author,
    required this.tags,
    required this.authorSlug,
    required this.length,
    required this.dateAdded,
    required this.dateModified,
  });
  late final String id;
  late final String content;
  late final String author;
  late final List<String> tags;
  late final String authorSlug;
  late final int length;
  late final String dateAdded;
  late final String dateModified;

  QuoteModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    content = json['content'];
    author = json['author'];
    tags = List.castFrom<dynamic, String>(json['tags']);
    authorSlug = json['authorSlug'];
    length = json['length'];
    dateAdded = json['dateAdded'];
    dateModified = json['dateModified'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['content'] = content;
    _data['author'] = author;
    _data['tags'] = tags;
    _data['authorSlug'] = authorSlug;
    _data['length'] = length;
    _data['dateAdded'] = dateAdded;
    _data['dateModified'] = dateModified;
    return _data;
  }
}
