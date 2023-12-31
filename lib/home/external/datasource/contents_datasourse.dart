import 'package:dio/dio.dart';

abstract class IContentsDatasource {
  Future<List<Map<String, dynamic>>> getAllContents();
  Future<List<dynamic>> getHomeContent();
}

class ContentsDatasource implements IContentsDatasource {
  final dio = Dio();
  final contents = [];
  @override
  Future<List<Map<String, dynamic>>> getAllContents() async {
    try {
      final result = await dio.get(
          'https://sheet.best/api/sheets/34e889f0-ab5e-4236-abde-da5ec6610596/tabs/all_categories');
      return result.data;
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<dynamic>> getHomeContent() async {
    try {
      final result = await dio.get(
          'https://sheet.best/api/sheets/34e889f0-ab5e-4236-abde-da5ec6610596/tabs/introduction_elements');
      return result.data;
    } catch (e) {
      throw UnimplementedError(e.toString());
    }
  }
}
