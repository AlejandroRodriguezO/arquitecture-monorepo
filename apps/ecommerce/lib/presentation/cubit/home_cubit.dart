import 'package:core/core.dart';
import 'package:ecommerce/domain/domain.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  HomeCubit(this._homeRepository) : super(HomeInitial());

  Future<void> fetchProducts() async {
    emit(HomeLoading());
    final result = await _homeRepository.getProducts();
    result.fold(
      onSuccess: (products) => emit(HomeLoaded(products)),
      onFailure: (error) => emit(HomeError(error.message)),
    );

  }
}
