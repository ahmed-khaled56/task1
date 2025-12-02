import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/seller_screen.dart';

class SellerGrid extends StatelessWidget {
  final List<dynamic> cardsList;
  const SellerGrid({super.key, required this.cardsList});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: portraitHeight(context) * .01287,
        crossAxisSpacing: portraitWidth(context) * .0279,
        childAspectRatio: 2.7,
      ),
      delegate: SliverChildBuilderDelegate((context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    SellerScreen(customSellerCard: cardsList[index]),
              ),
            );
          },
          child: cardsList[index],
        );
      }, childCount: cardsList.length),
    );
  }
}
