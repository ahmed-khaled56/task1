import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/ads_list.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/categories_list.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_search_textfield.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/home_upper_bar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/home_lower_bar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/scroll_dots_indicator.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/seller_list.dart';

class HomeBodyScreen extends StatefulWidget {
  const HomeBodyScreen({super.key});

  @override
  State<HomeBodyScreen> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<HomeBodyScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  HomeUpperBar(onTap: () => setState(() => isPressed = true)),

                  isPressed == false
                      ? Column(
                          children: [
                            AdsList(
                              onPageChanged: (index) {
                                setState(() => currentIndex = index);
                              },
                            ),
                            ScrollDotsIndicator(currentIndex: currentIndex),
                          ],
                        )
                      : CustomSearchTextfield(),

                  CategoriesList(
                    namesList: ["Fruits", "Vegetables", "Phone", "Pets"],
                    lisnksLIst: [
                      "assets/images/resturant.png",
                      "assets/images/farm.png",
                      "assets/images/coffe.png",
                      "assets/images/pharma.png",
                    ],
                  ),

                  SellerList(),

                  // LowerBar(),
                ],
              ),
            ),
          ),
        ),

        // LowerBar(),

        //  Flexible(child: SizedBox(height: )),
      ],
    );
  }
}
