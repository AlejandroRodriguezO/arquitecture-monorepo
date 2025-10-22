import 'package:bank/domain/domain.dart';
import 'package:core/core.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required HomeRepository homeRepository})
    : _homeRepository = homeRepository,
      super(HomeInitial());

  final HomeRepository _homeRepository;

  Future<void> fetchProducts() async {
    emit(HomeLoading());

    final result = await _homeRepository.getProducts();

    result.fold(
      onFailure: (error) => emit(HomeError(error.message)),
      onSuccess: (products) {
        emit(HomeLoaded(products));
      },
    );
  }
}
