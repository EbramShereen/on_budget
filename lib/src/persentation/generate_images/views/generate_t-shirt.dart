import 'dart:typed_data';

import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/utils/helper/constants/api.dart';
import '../../../utils/components/bottom_bar/bottom_navber.dart';

import '../../../utils/components/background.dart';
import '../../../utils/components/button.dart';
import '../../../utils/helper/constants/colors.dart';
import '../../../data/service/generate_images/generate_tshirt_api.dart';
import '../widgets/generate_t-shirt_result.dart';

class GenerateTshirt extends StatefulWidget {
  const GenerateTshirt({Key? key}) : super(key: key);

  static String id = 'GenerateT-shirt';

  @override
  // ignore: library_private_types_in_public_api
  _GenerateTshirtState createState() => _GenerateTshirtState();
}

class _GenerateTshirtState extends State<GenerateTshirt> {
  bool visible = false;
  String? custimizeImagination;
  final String defaultImagination = 'TshirtDesignAF, T Shirt Design';
  Future<Uint8List>? _imageFuture;
  String? errorMessage;
  ScrollController scrollController = ScrollController();

  final int _currentIndex = 3;

  int lastIndex = 3;

  @override
  void initState() {
    super.initState();
    _fetchImage(imagination: custimizeImagination ?? defaultImagination);
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();

    super.dispose();
  }

  void _fetchImage({required String imagination}) {
    setState(() {
      _imageFuture = GenerateTshirtApi().post(
        url: GenerateImages().kGenerateImageApi,
        token: GenerateImages().kGenerateImageToken,
        body: {
          'inputs': imagination,
          'timestamp': DateTime.now().millisecondsSinceEpoch * .0000007
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make your own T-shirt'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100.h),
              const Center(
                child: Text(
                  'Enter Your Imagination',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              SizedBox(
                width: 300.w,
                height: 90.h,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      custimizeImagination = value;
                    });
                  },
                  enableSuggestions: true,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Imagination Start Here',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    textSize: 14,
                    text: 'Surprise Me',
                    tap: () {
                      setState(() {
                        _fetchImage(imagination: defaultImagination);
                        visible = true;
                      });
                    },
                    width: 120.w,
                    colorBtn: const Color(0xCC3D54DA),
                    colorTxt: kSecondaryColor,
                    height: 40.h,
                  ),
                  SizedBox(width: 30.w),
                  Button(
                    textSize: 14,
                    text: 'Submit',
                    tap: () {
                      if (custimizeImagination != null) {
                        _fetchImage(imagination: custimizeImagination!);
                        visible = true;
                      }
                    },
                    width: 120.w,
                    colorBtn: kPrimaryColor,
                    colorTxt: kSecondaryColor,
                    height: 40.h,
                  ),
                ],
              ),
              const Gap(10),
              Visibility(
                visible: visible,
                child: FutureBuilder<Uint8List>(
                  future: _imageFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CardLoading(
                        height: 300,
                        width: 320.w,
                        borderRadius: BorderRadius.circular(50),
                      );
                    } else if (snapshot.hasError || errorMessage != null) {
                      return Center(
                        child: Text(
                          errorMessage ?? 'Failed to load image',
                          style: const TextStyle(color: Colors.red),
                        ),
                      );
                    } else {
                      return GenerateTshirtResult(bytes: snapshot.data!);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: BottomAppBar(
          color: kThirdColor,
          elevation: 0,
          height: 100,
          child: CustomBottomNavBar(
            currentIndex: 2,
            controller: scrollController,
            lastIndex: 2,
          ),
        ),
      ),
    );
  }
}
