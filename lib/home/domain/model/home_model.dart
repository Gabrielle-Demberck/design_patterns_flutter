class HomeModel {
  final String title;
  final String description;
  final List<String> contents;

  HomeModel({
    required this.title,
    required this.description,
    required this.contents,
  });

  factory HomeModel.empty() {
    return HomeModel(
      contents: [],
      title: '',
      description: '',
    );
  }
}



