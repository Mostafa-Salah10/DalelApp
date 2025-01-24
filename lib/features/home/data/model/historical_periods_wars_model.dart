import 'package:dalel/core/model/data_model.dart';

class HistoricalPeriodsWarsModel extends DataModel {
  HistoricalPeriodsWarsModel(
      {required super.title, required super.image, required super.decrtiption});

  factory HistoricalPeriodsWarsModel.fromJason(Map<String, dynamic> jason) {
    return HistoricalPeriodsWarsModel(
        title: jason['title'],
        image: jason['image'],
        decrtiption: jason['description']);
  }
}
