// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/features/home/data/model/historical_perdios_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  final homeCubit = FirebaseFirestore.instance.collection("historical_periods");
  List<HistoricalPerdiosModel> historicalPeriodsList = [];
  HomeCubit() : super(HomeCubitInitial());

  // Future<void> getHistoricalData() async {
  //   try {
  //     print('Before fetch Date ****************************************');
  //     print(historicalPeriodsList.length);
  //     print('Before fetch Date ****************************************');

  //     emit(HomeCubitHistoricalPeriodsLoading());
  //     await FirebaseFirestore.instance
  //         .collection('historical_periods')
  //         .get()
  //         .then((value) {
  //       value.docs.forEach((element) async {
  //         List<HistoricalPeriodsWarsModel> historicalPeriodswar = [];
  //         await FirebaseFirestore.instance
  //             .collection('historical_periods')
  //             .doc(element.id)
  //             .collection('historical_periods_wars')
  //             .get()
  //             .then((value) {
  //           value.docs.forEach((war) {
  //             historicalPeriodswar
  //                 .add(HistoricalPeriodsWarsModel.fromJason(war.data()));
  //           });
  //         });
  //         historicalPeriodsList.add(HistoricalPerdiosModel.fromjason(
  //             element.data(), historicalPeriodswar));
  //       });
  //       print('After fetch Date ****************************************');
  //       print(historicalPeriodsList.length);
  //       print('After fetch Date ****************************************');

  //       emit(HomeCubitHistoricalPeriodsSuccess());
  //     });
  //   } on Exception catch (e) {
  //     emit(HomeCubitHistoricalPeriodsFailure(msg: e.toString()));
  //   }
  // }

  Future getHistoricalData() async {
    try {
      emit(HomeCubitHistoricalPeriodsLoading());
      await homeCubit.get().then((value) {
        value.docs.forEach((element) {
          historicalPeriodsList
              .add(HistoricalPerdiosModel.fromjason(element.data()));
        });
        emit(HomeCubitHistoricalPeriodsSuccess());
      });
    } catch (e) {
      emit(HomeCubitHistoricalPeriodsFailure(msg: e.toString()));
    }
  }

  
}
