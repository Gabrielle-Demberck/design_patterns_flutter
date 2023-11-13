import '../../domain/model/element_content_model.dart';
import '../../domain/model/home_model.dart';

abstract class HomeState {} 
class HomeSuccessState extends HomeState {
  final HomeModel? homeValues;
  final List<ElementContentModel>? elementContentValues;
  HomeSuccessState({
    this.elementContentValues,
    this.homeValues,
  });
}

class HomeErrorState extends HomeState {
  final String errorMessage;
  HomeErrorState({required this.errorMessage});
}

class HomeLoadingState extends HomeState {}
