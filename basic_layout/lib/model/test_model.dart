// class TestModel {
//   final String title;
//   final String tag;

//   TestModel({required this.title, required this.tag});
// }

class DataModel {
  final String title;
  final String tag;

  DataModel({
    required this.title,
    required this.tag,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        title: json['_title'],
        tag: json['tag'],
      );

  Map<String, dynamic> toJson() => {
        '_title': title,
        'tag': tag,
      };
}
