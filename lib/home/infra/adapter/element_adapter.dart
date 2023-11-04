import 'package:design_patterns_flutter/home/domain/model/element_model.dart';

class ElementAdapter {
  static ElementModel fromMap(Map<String, dynamic> json) {
    return ElementModel(
      name: json['name'],
      description: json['description'],
      contents: json['example'],
    );
  }
}
