import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_budget/src/data/repository/home/categories/category_products_repository.dart';
import 'package:on_budget/src/data/service/home/home_categories/category_product_service.dart';
import 'package:on_budget/src/logic/home/home_category_cubit/Home_cubit.dart';
import 'package:on_budget/src/logic/home/home_category_cubit/home_states.dart';
import 'package:on_budget/src/persentation/home/widgets/home/product_card.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';

class ProductsListView extends StatelessWidget {
  ProductsListView({super.key, required this.category});
  final String category;
  late String categoryUrl = HomeApi().getCategoryProducts(category: category);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: BlocProvider(
        create: (context) => HomeCubit(
            category: categoryUrl,
            categoryProductsRepository: CategoryProductsRepository(
                categoryProductService: CategoryProductsService(),
                category: categoryUrl))
          ..getProductItems(),
        child: BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            if (state is HomeWaiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomeLoaded) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return ProductCard(product: product);
                },
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
              );
            } else if (state is HomeFailure) {
              return Center(
                child: Text(state.error),
              );
            } else {
              return const Center(
                child: Text('No data available'),
              );
            }
          },
        ),
      ),
    );
  }
}
