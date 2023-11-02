import 'package:design_patterns_flutter/home/external/datasource/contents_datasourse.dart';
import 'package:design_patterns_flutter/home/infra/adapter/contents_adapter.dart';
import 'package:design_patterns_flutter/home/domain/model/content_model.dart';

abstract class IContentsRepository {
  Future<List<ContentModel>> getContents();
}

class ContentsRepository implements IContentsRepository {
  final dataSource = ContentsDatasource();
  @override
  Future<List<ContentModel>> getContents() async {
    try {
      final result = await dataSource.getAllContents();
      return ContentsAdapter.fromMap(result);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
