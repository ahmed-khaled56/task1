import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/product_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/seller_screen_body.dart';

class product_grid extends StatelessWidget {
  const product_grid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: portraitHeight(context) * .01287,
        crossAxisSpacing: portraitWidth(context) * .0279,
        childAspectRatio: 2.5,
      ),
      delegate: SliverChildBuilderDelegate((context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    ProductScreen(productCard: productsCardsList[index]),
              ),
            );
          },
          child: productsCardsList[index],
        );
      }, childCount: productsCardsList.length),
    );
  }
}
