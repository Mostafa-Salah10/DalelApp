import 'package:dalel/core/model/data_model.dart';

class HistoricalWarsModel extends DataModel {
  HistoricalWarsModel(
      {required super.title, required super.image, required super.decrtiption});

  factory HistoricalWarsModel.fromJason(Map<String, dynamic> jason) {
    return HistoricalWarsModel(
        title: jason['title'],
        image: jason['image'],
        decrtiption: jason['description']);
  }
}
