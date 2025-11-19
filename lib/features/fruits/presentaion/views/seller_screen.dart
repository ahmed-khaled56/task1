import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_seller_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/seller_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/seller_screen_body.dart';

class SellerScreen extends StatelessWidget {
  const SellerScreen({super.key, required this.customSellerCard});
  final CustomSellerCard? customSellerCard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SellerScreenBody(customSellerCard: customSellerCard),
      ),
    );
  }
}
