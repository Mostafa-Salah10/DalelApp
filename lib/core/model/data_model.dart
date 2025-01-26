class DataModel {
  final String title;
  final String image;
  final String decrtiption;
  DataModel(
      {required this.title, required this.image, required this.decrtiption});

  factory DataModel.fromJason({required Map<String, dynamic> jason}) {
    return DataModel(
        title: jason['title'],
        image: jason['image'],
        decrtiption: jason['description']);
  }
}
