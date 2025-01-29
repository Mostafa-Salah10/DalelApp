import 'package:dalel/core/model/data_model.dart';

class HistoryBookModel extends DataModel {
  final int price;
  final String category;

  HistoryBookModel({
    required this.category,
    required super.title,
    required super.image,
    required super.decrtiption,
    required this.price,
  });

  factory HistoryBookModel.fromJson(Map<String, dynamic> jason) {
    return HistoryBookModel(
        category: jason['category'],
        title: jason['title'],
        image: jason['image'],
        decrtiption: jason['description'],
        price: jason['price']);
  }
}
