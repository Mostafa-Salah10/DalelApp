import 'package:dalel/core/model/data_model.dart';
class HistoricalPerdiosModel extends DataModel {
//  final List<HistoricalPeriodsWarsModel> wars;
  HistoricalPerdiosModel(
      {
      //required this.wars,
      required super.title,
      required super.image,
      required super.decrtiption});

  factory HistoricalPerdiosModel.fromjason(
      Map<String, dynamic> jason //, List<HistoricalPeriodsWarsModel> wars
      ) {
    return HistoricalPerdiosModel(
//        wars: wars,
        title: jason['title'],
        image: jason['image'],
        decrtiption: jason['description']);
  }
}
