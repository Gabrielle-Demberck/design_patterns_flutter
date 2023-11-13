import 'package:design_patterns_flutter/home/external/datasource/contents_datasourse.dart';
import 'package:design_patterns_flutter/home/infra/adapter/contents_adapter.dart';
import 'package:design_patterns_flutter/home/domain/model/element_content_model.dart';

import '../../domain/model/home_model.dart';
import '../adapter/element_adapter.dart';

abstract class IContentsRepository {
  Future<List<ElementContentModel>> getContents();
  Future<HomeModel> getHomeContent();
}

class ContentsRepository implements IContentsRepository {
  final IContentsDatasource dataSource;
  ContentsRepository({required this.dataSource});
  @override
  Future<List<ElementContentModel>> getContents() async {
    try {
      final result = await dataSource.getAllContents();
      return ElementContentsAdapter.fromMap(result);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<HomeModel> getHomeContent() async {
    try {
      final result = await dataSource.getHomeContent();
      return HomeAdapter.fromMap(result[0]);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
