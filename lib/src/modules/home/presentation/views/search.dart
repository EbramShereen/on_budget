import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:on_budget/src/modules/home/presentation/views/home.dart';
import 'package:on_budget/src/utils/components/app_bar.dart';
import 'package:on_budget/src/utils/components/background.dart';
import 'package:on_budget/src/utils/components/bottom_bar/bottom_navber.dart';
import 'package:on_budget/src/utils/components/leading_icon.dart';
import 'package:on_budget/src/utils/components/text_field_widget.dart';
import 'package:on_budget/src/utils/helper/constants/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static String id = 'search screen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        leading: LeadingIcon(
          onPressed: () => Navigator.pushNamed(context, Home.id),
        ),
      ),
      body: Background(
        child: Column(
          children: [
            SizedBox(
              width: 400,
              child: TextFieldWidget(
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.search),
                    )),
                hintText: 'Search for your Product...',
              ),
            ),
            const Row(
              children: [
                Gap(15),
                Text(
                  'Recent',
                  style: TextStyle(fontSize: 25),
                ),
                Spacer(),
                Text(
                  'Clear All',
                  style: TextStyle(fontSize: 20, color: kPrimaryColor),
                ),
                Gap(15),
              ],
            ),
            const Divider(),
            const Gap(10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemBuilder: (context, index) => Row(
                  children: [
                    const Gap(10),
                    const Text(
                      'Blue Shirt',
                      style: TextStyle(fontSize: 18),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.cancel_outlined,
                          color: kPrimaryColor,
                        )),
                    const Gap(10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 100,
        padding: const EdgeInsets.all(0),
        color: kThirdColor,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: CustomBottomNavBar(
            controller: scrollController,
            currentIndex: 1,
            lastIndex: 1,
          ),
        ),
      ),
      extendBody: true,
    );
  }
}
