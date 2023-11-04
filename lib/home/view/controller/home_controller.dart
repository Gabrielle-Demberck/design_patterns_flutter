import 'package:design_patterns_flutter/home/domain/model/element_model.dart';
import 'package:flutter/material.dart';

import '../../domain/model/element_content_model.dart';
import '../../external/datasource/contents_datasourse.dart';
import '../../infra/repository/contents_repository.dart';

class HomeController {
  // observáveis
  final elementContents = ValueNotifier(<ElementContentModel>[]);
  final elementModel = ValueNotifier(ElementModel.empty());

  // Instância única da classe
  static HomeController? _controllerInstance;
  // Construtor nomeado privado
  HomeController._internal();

// Método de factory para obter a instância única
  factory HomeController() {
    return _controllerInstance ??= HomeController._internal();
  }

  // Métodos 
  Future<void> getContents() async {
    final IContentsRepository contentsRepository =
        ContentsRepository(dataSource: ContentsDatasource());
    try {
      elementContents.value = await contentsRepository.getContents();
    } catch (e) {
      throw UnimplementedError();
    }
  }

  Future<void> getHomeElement() async {
    final IContentsRepository contentsRepository =
        ContentsRepository(dataSource: ContentsDatasource());
    try {
      elementModel.value = await contentsRepository.getHomeContent();
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
