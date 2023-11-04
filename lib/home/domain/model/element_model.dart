class ElementModel {
  final String name;
  final String description;
  final List<String> contents;

  ElementModel({
    required this.name,
    required this.description,
    required this.contents,
  });

  factory ElementModel.empty() {
    return ElementModel(
      contents: [],
      name: '',
      description: '',
    );
  }
}
