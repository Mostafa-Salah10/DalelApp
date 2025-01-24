import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/features/home/data/model/historical_perdios_model.dart';
import 'package:dalel/features/home/data/model/historical_periods_wars_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  final homeCubit = FirebaseFirestore.instance.collection("historical_periods");
  List<HistoricalPerdiosModel> historicalPeriodsList = [];
  List<HistoricalPeriodsWarsModel> historicalPeriodswarsList = [];
  HomeCubit() : super(HomeCubitInitial());
  void getHistoricalPeriods() async {
    try {
      emit(HomeCubitHistoricalPeriodsLoading());
      await homeCubit.get().then((value) {
        value.docs.forEach((element) async {
          QuerySnapshot list = await homeCubit
              .doc(element.id)
              .collection("historical_periods_wars")
              .get();
          list.docs.forEach((war) {
            historicalPeriodswarsList.add(HistoricalPeriodsWarsModel.fromJason(
                war.data() as Map<String, dynamic>));
          });
          historicalPeriodsList.add(HistoricalPerdiosModel.fromjason(
              element.data(), historicalPeriodswarsList));
        });

        emit(HomeCubitHistoricalPeriodsSuccess());
      });
    } catch (e) {
      emit(HomeCubitHistoricalPeriodsFailure(msg: e.toString()));
    }
  }
}
