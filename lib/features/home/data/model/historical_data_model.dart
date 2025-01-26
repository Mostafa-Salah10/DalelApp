import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/features/home/data/model/historical_wars_model.dart';

class HistoricalDataModel extends DataModel {
  final List<HistoricalWarsModel> wars;
  HistoricalDataModel(
      {required this.wars,
      required super.title,
      required super.image,
      required super.decrtiption});

  factory HistoricalDataModel.fromjason(
      Map<String, dynamic> jason, List<HistoricalWarsModel> wars) {
    return HistoricalDataModel(
        wars: wars,
        title: jason['title'],
        image: jason['image'],
        decrtiption: jason['description']);
  }
}
