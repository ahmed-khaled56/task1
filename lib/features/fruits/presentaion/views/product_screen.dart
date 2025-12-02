import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/product_appBar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/product_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/product_screen_body.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.productCard});
  final ProductCard productCard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(portraitHeight(context) * .05),
        child: ProductAppbar(),
      ),
      body: SafeArea(child: ProductScreenBody(productCard: productCard)),
    );
  }
}
