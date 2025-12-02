import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/ads_list.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/categories_list.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_search_textfield.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_seller_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/scroll_dots_indicator.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/seller_gridList.dart';
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

  final List<dynamic> cardsList = const [
    CustomSellerCard(
      delevPrice: "0.5 KD",
      distance: "2.5 KM",
      foodName: "Beverages",
      icon: "assets/images/icon.png",
      openClosd: "open",
      rate: 4.5,
      sellerName: "Seller Name",
      imageLink: "assets/images/sellerImage.png",
    ),
    CustomSellerCard(
      delevPrice: "0.5 KD",
      distance: "2.5 KM",
      foodName: "Pizza",
      icon: "assets/images/icon2.png",
      openClosd: "closed",
      rate: 4.5,
      sellerName: "Seller Name",
    ),
    CustomSellerCard(
      delevPrice: "free",
      distance: "2.5 KM",
      foodName: "Fried Chicken",
      openClosd: "open",
      rate: 4.5,
      sellerName: "Seller Name",
    ),
    CustomSellerCard(
      delevPrice: "free",
      distance: "2.5 KM",
      foodName: "Fried Chicken",
      openClosd: "open",
      rate: 4.5,
      sellerName: "Seller Name",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: isPressed == false
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
              : Padding(
                  padding: EdgeInsets.only(
                    bottom: portraitHeight(context) * .0094,
                  ),
                  child: CustomSearchTextfield(),
                ),
        ),

        SliverToBoxAdapter(
          child: Center(
            child: SizedBox(
              width: portraitWidth(context) * 0.9,
              child: CategoriesList(
                namesList: ["Fruits", "Vegetables", "Phone", "Pets"],
                lisnksLIst: [
                  "assets/images/resturant.png",
                  "assets/images/farm.png",
                  "assets/images/coffe.png",
                  "assets/images/pharma.png",
                ],
              ),
            ),
          ),
        ),
        SliverLayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.crossAxisExtent;
            if (width <= 600) {
              return SellerList(cardsList: cardsList);
            } else {
              return SellerGrid(cardsList: cardsList);
            }
          },
        ),
      ],
    );
  }
}
