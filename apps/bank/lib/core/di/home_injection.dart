import 'package:core/core.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../../presentation/cubit/home_cubit.dart';

Future<void> homeInjection() async {
  locator.registerLazySingleton<HomeDatasource>(
    () => HomeDatasourceImpl(dio: DioClient(baseUrl: 'https://dummyjson.com/').dio),
  );

  locator.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(datasource: locator()),
  );

  locator.registerFactory<HomeCubit>(() => HomeCubit(homeRepository: locator()));
}
