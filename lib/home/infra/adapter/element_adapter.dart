import '../../domain/model/home_model.dart';

class HomeAdapter {
  static HomeModel fromMap(Map<String, dynamic> json) {
    return HomeModel(
      title: json['title'],
      description: json['description'],
      contents: <String>[
        json['group_types_1'],
        json['group_types_2'],
        json['group_types_3']
      ],
    );
  }
}
