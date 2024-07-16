import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_budget/src/data/repository/home/categories/category_products_repository.dart';
import 'package:on_budget/src/data/service/home/home_categories/category_product_service.dart';
import 'package:on_budget/src/logic/home/home_category_cubit/Home_cubit.dart';
import 'package:on_budget/src/logic/home/home_category_cubit/home_states.dart';
import 'package:on_budget/src/persentation/home/widgets/home/product_card.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';
import 'package:on_budget/src/utils/helper/functions/category_list.dart';

class ShowAllProductsByCategory extends StatefulWidget {
  const ShowAllProductsByCategory({super.key});
  static String id = 'ShowAllProductsByCategory';

  @override
  State<ShowAllProductsByCategory> createState() =>
      _ShowAllProductsByCategoryState();
}

class _ShowAllProductsByCategoryState extends State<ShowAllProductsByCategory> {
  String category = '';
  String categoryApiUrl = '';

  List categoryApis = [
    HomeApi().getCategoryProducts(category: items[0]),
    HomeApi().getCategoryProducts(category: items[1]),
    HomeApi().getCategoryProducts(category: items[2]),
    HomeApi().getCategoryProducts(category: items[3]),
    HomeApi().getCategoryProducts(category: items[4]),
    HomeApi().getCategoryProducts(category: items[5]),
    HomeApi().getCategoryProducts(category: items[6]),
    HomeApi().getCategoryProducts(category: items[7]),
    HomeApi().getCategoryProducts(category: items[8]),
    HomeApi().getCategoryProducts(category: items[9]),
    HomeApi().getCategoryProducts(category: items[10]),
    HomeApi().getCategoryProducts(category: items[11]),
    HomeApi().getCategoryProducts(category: items[12]),
    HomeApi().getCategoryProducts(category: items[13]),
    HomeApi().getCategoryProducts(category: items[14]),
    HomeApi().getCategoryProducts(category: items[15]),
    HomeApi().getCategoryProducts(category: items[16]),
    HomeApi().getCategoryProducts(category: items[17]),
    HomeApi().getCategoryProducts(category: items[18]),
    HomeApi().getCategoryProducts(category: items[19]),
    HomeApi().getCategoryProducts(category: items[20]),
    HomeApi().getCategoryProducts(category: items[21]),
    HomeApi().getCategoryProducts(category: items[22]),
    HomeApi().getCategoryProducts(category: items[23]),
    HomeApi().getCategoryProducts(category: items[24]),
    HomeApi().getCategoryProducts(category: items[25]),
    HomeApi().getCategoryProducts(category: items[26]),
    HomeApi().getCategoryProducts(category: items[27]),
    HomeApi().getCategoryProducts(category: items[28]),
    HomeApi().getCategoryProducts(category: items[29]),
    HomeApi().getCategoryProducts(category: items[30]),
    HomeApi().getCategoryProducts(category: items[31]),
    HomeApi().getCategoryProducts(category: items[32]),
    HomeApi().getCategoryProducts(category: items[33]),
    HomeApi().getCategoryProducts(category: items[34]),
    HomeApi().getCategoryProducts(category: items[35]),
    HomeApi().getCategoryProducts(category: items[36]),
    HomeApi().getCategoryProducts(category: items[37]),
    HomeApi().getCategoryProducts(category: items[38]),
    HomeApi().getCategoryProducts(category: items[39]),
    HomeApi().getCategoryProducts(category: items[40]),
    HomeApi().getCategoryProducts(category: items[41]),
    HomeApi().getCategoryProducts(category: items[42]),
    HomeApi().getCategoryProducts(category: items[43]),
    HomeApi().getCategoryProducts(category: items[44]),
  ];

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as int;
    categoryApiUrl = categoryApis[args];

    return Scaffold(
      appBar: AppBar(
        title: Text(items[args]),
      ),
      body: BlocProvider(
        create: (context) => HomeCubit(
          category: categoryApiUrl,
          categoryProductsRepository: CategoryProductsRepository(
            category: categoryApiUrl,
            categoryProductService: CategoryProductsService(),
          ),
        )..getProductItems(),
        child: BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            if (state is HomeWaiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is HomeLoaded) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .8,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 50,
                ),
                itemCount: state.products.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10).r,
                    child: ProductCard(product: product),
                  );
                },
              );
            } else if (state is HomeFailure) {
              final error = state.error;
              print(error);
              return Center(child: Text(error));
            }
            return Container();
          },
        ),
      ),
    );
  }
}
