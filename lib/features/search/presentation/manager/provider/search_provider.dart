import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/features/cart/data/model/history_book_model.dart';
import 'package:dalel/features/home/data/model/historical_data_model.dart';
import 'package:dalel/features/home/data/model/historical_wars_model.dart';
import 'package:dalel/features/onboarding/presentation/exports_onboarding_feature.dart';

class SearchProvider with ChangeNotifier {
  List<DataModel> allData = [];
  List<DataModel> filterationListSearch = [];
  final searchProvider = FirebaseFirestore.instance;
  List<HistoricalDataModel> historicalPeriodsList = [];
  List<HistoricalDataModel> historicaCharsList = [];
  List<HistoryBookModel> historicalBooksList = [];
  List<HistoryBookModel> historicalSouvinersList = [];

  Future<void> fetchHistoricalPeriods() async {
    try {
      await FirebaseFirestore.instance
          .collection('historical_periods')
          .get()
          .then((value) {
        value.docs.forEach((element) async {
          await FirebaseFirestore.instance
              .collection('historical_periods')
              .doc(element.id)
              .collection('historical_periods_war')
              .get()
              .then((value) {
            List<HistoricalWarsModel> historicalPeriodswar = [];
            value.docs.forEach((war) {
              historicalPeriodswar
                  .add(HistoricalWarsModel.fromJason(war.data()));
            });
            historicalPeriodsList.add(HistoricalDataModel.fromjason(
                element.data(), historicalPeriodswar));
          });
        });
      });
    } catch (e) {
      print("Error");
    }
  }

  Future<void> fetchHistoricalCharscters() async {
    try {
      await FirebaseFirestore.instance
          .collection('historical_characters')
          .get()
          .then((value) {
        value.docs.forEach((element) async {
          await FirebaseFirestore.instance
              .collection('historical_characters')
              .doc(element.id)
              .collection('historical_char_wars')
              .get()
              .then((value) {
            List<HistoricalWarsModel> historicalCharsList = [];
            value.docs.forEach((war) {
              historicalCharsList
                  .add(HistoricalWarsModel.fromJason(war.data()));
            });
            historicaCharsList.add(HistoricalDataModel.fromjason(
                element.data(), historicalCharsList));
          });
        });
      });
    } catch (e) {
      print("Error");
    }
  }

  Future<void> fetchHistoricalBooks() async {
    try {
      await searchProvider.collection("historical_Books").get().then((value) {
        value.docs.forEach((element) {
          historicalBooksList.add(HistoryBookModel.fromJson(element.data()));
        });
      });
    } catch (e) {
      print("Error");
    }
  }

  Future<void> fetchHistoricalSouviners() async {
    try {
      await searchProvider
          .collection("historical_souvenirs")
          .where("category", isNotEqualTo: "general")
          .get()
          .then((value) {
        value.docs.forEach((element) {
          historicalSouvinersList
              .add(HistoryBookModel.fromJson(element.data()));
        });
      });
    } catch (e) {
      print('Error');
    }
  }

  Future<void> fetchAllData() async {
    await fetchHistoricalPeriods();
    await fetchHistoricalCharscters();
    await fetchHistoricalBooks();
    await fetchHistoricalSouviners();
    allData = [
      ...historicalPeriodsList,
      ...historicaCharsList,
      ...historicalSouvinersList,
      ...historicalBooksList
    ];
  }

  void filterationListMethod(String value) {
    if (value.isEmpty) {
      filterationListSearch.clear();
    } else {
      filterationListSearch = allData
          .where((element) =>
              element.title.toLowerCase().startsWith(value.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
