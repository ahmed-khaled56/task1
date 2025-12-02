import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/product_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/seller_screen_body.dart';

class productList extends StatelessWidget {
  const productList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
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
