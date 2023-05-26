class QuotesModel {
  final String title;
  final String body;

  QuotesModel({
    required this.title,
    required this.body,
  });

  factory QuotesModel.fromJson(Map<String, dynamic> json) => QuotesModel(
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "body": body,
      };
}
