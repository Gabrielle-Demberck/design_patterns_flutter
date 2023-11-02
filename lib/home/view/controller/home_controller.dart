import 'package:dio/dio.dart';
import '../../domain/model/content_model.dart';

class HomeController {
  final dio = Dio();
  final contents = [];

  Future<List<ContentModel>> getContents() async {
    try {
      final result = await dio.get(
          'https://sheet.best/api/sheets/34e889f0-ab5e-4236-abde-da5ec6610596/tabs/all_categories');
      print(result);
    } catch (e) {}
    throw UnimplementedError();

    //TODO ADAPTER
  }

  Future<List<ContentModel>> getElement() async {
    try {
      final result = await dio.get(
          'https://sheet.best/api/sheets/34e889f0-ab5e-4236-abde-da5ec6610596/tabs/tabs/introduction_elements');
      print(result);
    } catch (e) {}
    // TODO: implement getContents
    throw UnimplementedError();
    //TODO ADAPTER
  }
}
