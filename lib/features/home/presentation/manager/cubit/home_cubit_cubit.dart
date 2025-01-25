// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/features/home/data/model/historical_perdios_model.dart';
import 'package:dalel/features/home/data/model/historical_periods_wars_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  final homeCubit = FirebaseFirestore.instance.collection("historical_periods");
  List<HistoricalPerdiosModel> historicalPeriodsList = [];
  HomeCubit() : super(HomeCubitInitial());

  Future<void> fetchHistoricalPeriods() async {
    emit(HomeCubitHistoricalPeriodsLoading());
    try {
      await FirebaseFirestore.instance
          .collection('historical_periods')
          .get()
          .then((value) {
        value.docs.forEach(fetchHistoricalWars);
      });
    } catch (e) {
      emit(HomeCubitHistoricalPeriodsFailure(msg: e.toString()));
    }
  }

  Future<void> fetchHistoricalWars(element) async {
    await FirebaseFirestore.instance
        .collection('historical_periods')
        .doc(element.id)
        .collection('historical_periods_war')
        .get()
        .then((value) {
      List<HistoricalPeriodsWarsModel> historicalPeriodswar = [];
      value.docs.forEach((war) {
        historicalPeriodswar
            .add(HistoricalPeriodsWarsModel.fromJason(war.data()));
      });
      historicalPeriodsList.add(HistoricalPerdiosModel.fromjason(
          element.data(), historicalPeriodswar));
    });
    emit(HomeCubitHistoricalPeriodsSuccess());
  }
}
