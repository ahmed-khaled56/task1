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
        HomeUpperBar(
          onTap: () {
            setState(() {
              isPressed = true;
            });
          },
        ),

        // SizedBox(height: MediaQuery.sizeOf(context).height * .0001),
        isPressed == false
            ? Column(
                children: [
                  AdsList(),
                  ScrollDotsIndicator(currentIndex: currentIndex),
                ],
              )
            : CustomSearchTextfield(),

        //   SizedBox(height: MediaQuery.sizeOf(context).height * .0001),
        CategoriesList(
          lisnksLIst: [
            "assets/images/resturant.png",
            "assets/images/farm.png",
            "assets/images/coffe.png",
            "assets/images/pharma.png",
          ],
        ),

        SellerList(),

        Flexible(child: SizedBox(height: MediaQuery.sizeOf(context).height)),
        LowerBar(),
      ],
    );
  }
}
