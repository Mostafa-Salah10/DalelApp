import 'package:dalel/features/auth/data/repository/auth_repo_impl.dart';
import 'package:dalel/features/auth/prensentation/manager/cubit/auth_cubit_cubit.dart';
import 'package:dalel/features/cart/presentation/manager/cubit/cart_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<AuthCubit>(AuthCubit(authRepo: AuthRepoImpl()));
  getIt.registerSingleton<CartCubit>(CartCubit());
}
