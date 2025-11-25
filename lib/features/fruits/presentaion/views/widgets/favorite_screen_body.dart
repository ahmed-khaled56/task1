import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/favorite_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';

class FavoriteScreenBody extends StatelessWidget {
  const FavoriteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 100),

          child: Column(
            children: [
              CustomUpperbar(title: "Favorite"),
              SizedBox(height: MediaQuery.sizeOf(context).height * .01),
              FavoriteCard(
                beforePrice: "14.00 KD",
                price: "12.00 KD",

                productName: "Product name",
                note: "Up to 10% Off",
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * .01),
              FavoriteCard(
                beforePrice: "14.00 KD",
                price: "12.00 KD",

                productName: "Product name",
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * .01),
            ],
          ),
        ),
      ),
    );
  }
}
