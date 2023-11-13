import 'package:design_patterns_flutter/home/view/controller/home_state.dart';
import 'package:flutter/material.dart';
import '../../external/datasource/contents_datasourse.dart';
import '../../infra/repository/contents_repository.dart';

class HomeController extends ValueNotifier<HomeState> {
  final IContentsRepository contentsRepository =
      ContentsRepository(dataSource: ContentsDatasource());

  // Observables

  // Unique class instance
  static HomeController? _controllerInstance;

  // Private named constructor
  HomeController._internal() : super(HomeLoadingState());

  // Factory Method to get unique
  factory HomeController() {
    return _controllerInstance ??= HomeController._internal();
  }

// Methods
  Future<void> getHomeElement() async {
    value = HomeLoadingState();
    try {
      final result = await contentsRepository.getHomeContent();
      value = HomeSuccessState(homeValues: result);
    } catch (e) {
      value = HomeErrorState(errorMessage: e.toString());
    }
  }

  Future<void> getContents() async {
    value = HomeLoadingState();
    try {
      final result = await contentsRepository.getContents();
      value = HomeSuccessState(elementContentValues: result);
    } catch (e) {
      value = HomeErrorState(errorMessage: e.toString());
      throw UnimplementedError();
    }
  }
}
