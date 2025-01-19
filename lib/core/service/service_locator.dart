import 'package:dalel/features/auth/prensentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
