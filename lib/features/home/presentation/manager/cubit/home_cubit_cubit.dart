// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/features/home/data/model/historical_data_model.dart';
import 'package:dalel/features/home/data/model/historical_wars_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  final homeCubit = FirebaseFirestore.instance.collection("historical_periods");
  List<HistoricalDataModel> historicalPeriodsList = [];
  List<HistoricalDataModel> historicaCharsList = [];
  List<DataModel> historicaSouvenirsList = [];
  HomeCubit() : super(HomeCubitInitial());

  Future<void> fetchHistoricalPeriods() async {
    emit(HomeCubitHistoricalPeriodsLoading());
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
          emit(HomeCubitHistoricalPeriodsSuccess());
        });
      });
    } catch (e) {
      emit(HomeCubitHistoricalPeriodsFailure(msg: e.toString()));
    }
  }

  Future<void> fetchHistoricalCharscters() async {
    emit(HomeCubitHistoricalCharsLoading());
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
          emit(HomeCubitHistoricalCharsSuccess());
        });
      });
    } catch (e) {
      emit(HomeCubitHistoricalCharsFailure(msg: e.toString()));
    }
  }

  Future<void> fetchHistoricalSouvenirs() async {
    try {
      emit(HomeCubitHistoricalSouvenirsLoading());
      await FirebaseFirestore.instance
          .collection('historical_souvenirs')
          .get()
          .then((value) {
        value.docs.forEach((element) {
          historicaSouvenirsList
              .add(DataModel.fromJason(jason: element.data()));
        });
      });
      emit(HomeCubitHistoricalSouvenirsSuccess());
    } catch (e) {
      emit(HomeCubitHistoricalSouvenirsFailure(msg: e.toString()));
    }
  }

}
