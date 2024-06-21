import 'package:animated_read_more_text/animated_read_more_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/data/models/home/products_by_category_model.dart';
import 'package:on_budget/src/data/repository/home/size_product/size_product_repository.dart';
import 'package:on_budget/src/data/service/home/size_predictor/size_predictor_service.dart';
import 'package:on_budget/src/logic/home/size_predictor/size_predictor_cubit.dart';
import 'package:on_budget/src/logic/home/size_predictor/size_predictor_states.dart';
import 'package:on_budget/src/persentation/cart/views/cart_view.dart';
import 'package:on_budget/src/persentation/home/widgets/product_details/product_reviews.dart';
import 'package:on_budget/src/persentation/home/widgets/product_details/stars/five_stars.dart';
import 'package:on_budget/src/utils/cart.dart';
import 'package:on_budget/src/utils/components/background.dart';
import 'package:on_budget/src/utils/components/button.dart';
import 'package:on_budget/src/utils/components/leading_icon.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';
import 'package:on_budget/src/persentation/home/widgets/product_details/sliders/size_sliders.dart';

class ProductsDetails extends StatefulWidget {
  const ProductsDetails({super.key});

  static String id = 'productsDetails';

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  double age = 21, weight = 58, height = 175;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return BlocProvider(
      create: (context) => SizePredictorCubit(
        sizePredictorRepository: SizePredictorRepository(
          sizePredictorService: SizePredictorService(),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250.w,
                child: Text(
                  product.productName,
                  maxLines: 2,
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ],
          ),
          leading: LeadingIcon(
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Background(
          horizontalPadding: 0,
          verticalPadding: 0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(product.frontImage),
                        fit: BoxFit.fill),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ).r,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Gap(ScreenUtil().setWidth(20)),
                      const Row(
                        children: [
                          FiveStars(),
                          Text('4.5'),
                        ],
                      ),
                      const Gap(15),
                      Row(
                        children: [
                          Text(
                            product.categoryName,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '\$${product.unitPrice}',
                            style: TextStyle(
                              color: const Color(0xFFFE2121),
                              fontSize: 20.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      AnimatedReadMoreText(
                        product.productDescription,
                        maxLines: 3,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      SizeSliders(
                        valueHeight: height,
                        valueWeight: weight,
                        valueAge: age,
                        onChanged: (newHeight, newWeight, newAge) {
                          setState(() {
                            height = newHeight;
                            weight = newWeight;
                            age = newAge;
                          });
                        },
                      ),
                      Gap(ScreenUtil().setHeight(20)),
                      SizePredictorView(
                        age: age,
                        height: height,
                        weight: weight,
                      ),
                      Gap(ScreenUtil().setHeight(20)),
                      Button(
                          text: 'Add to Cart',
                          width: 150,
                          tap: () {
                            cartList.add(CartModel(
                                name: product.productName,
                                image: product.frontImage,
                                price: product.unitPrice));
                            Navigator.pushNamed(context, CartView.id);
                          },
                          colorBtn: kPrimaryColor,
                          colorTxt: kSecondaryColor,
                          height: 50),
                      Gap(ScreenUtil().setHeight(30)),
                      const ProductsReviews(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SizePredictorView extends StatelessWidget {
  const SizePredictorView({
    super.key,
    required this.age,
    required this.weight,
    required this.height,
  });

  final double age, weight, height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<SizePredictorCubit, SizePredictorStates>(
          builder: (context, state) {
            if (state is SizePredictorWaiting) {
              return const CircularProgressIndicator();
            } else if (state is SizePredictorLoaded) {
              return Text(
                'Recommended Size: ${state.sizePredictorModel.predictedSize}',
                style: const TextStyle(fontSize: 24),
              );
            } else if (state is SizePredictorError) {
              print(state.message);
              return Text(
                'Error: ${state.message}',
                style: const TextStyle(fontSize: 24, color: Colors.red),
              );
            } else {
              return const Text(
                'Recommended Size: ',
                style: TextStyle(fontSize: 24),
              );
            }
          },
        ),
        Button(
          text: 'Get Recommended Size',
          tap: () {
            print('Button Pressed'); // Debug statement
            context
                .read<SizePredictorCubit>()
                .getSizePredictor(height, weight, age);
          },
          width: 335.w,
          colorBtn: kPrimaryColor,
          colorTxt: kSecondaryColor,
          height: 50,
        ),
      ],
    );
  }
}
