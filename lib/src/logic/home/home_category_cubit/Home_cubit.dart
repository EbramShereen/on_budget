import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_budget/src/data/models/home/products_by_category_model.dart';
import 'package:on_budget/src/data/repository/home/categories/category_products_repository.dart';
import 'package:on_budget/src/logic/home/home_category_cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  final CategoryProductsRepository categoryProductsRepository;
  String category;
  HomeCubit({required this.categoryProductsRepository, required this.category})
      : super(HomeInitial());

  void getProductItems() async {
    try {
      emit(HomeWaiting());
      print('Fetching data...');

      final products = await categoryProductsRepository.getCategoryProducts();

      print('Data fetched successfully: $products items');
      emit(HomeLoaded(products));
    } catch (e) {
      print('Error: $e');
      emit(HomeFailure(e.toString()));
    }
  }
}
