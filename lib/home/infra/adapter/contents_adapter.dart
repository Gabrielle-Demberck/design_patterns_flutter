import 'package:design_patterns_flutter/home/domain/model/element_content_model.dart';

class ElementContentsAdapter {
 static List<ElementContentModel> fromMap(List<Map<String, dynamic>> json) {
    return json.map(_fromMap).toList();
  }

 static ElementContentModel _fromMap(Map<String, dynamic> content) {
    return ElementContentModel(
      name: content['name'],
      description: content['description'],
      example: content['example'],
    );
  }
}
