import 'package:design_patterns_flutter/home/domain/model/content_model.dart';

class ContentsAdapter {
 static List<ContentModel> fromMap(List<Map<String, dynamic>> json) {
    return json.map(_fromMap).toList();
  }

 static ContentModel _fromMap(Map<String, dynamic> content) {
    return ContentModel(
      name: content['name'],
      description: content['description'],
      example: content['example'],
    );
  }
}
