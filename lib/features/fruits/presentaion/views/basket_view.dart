import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/basket_lower_bar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/basket_screen_body.dart';

class BasketView extends StatelessWidget {
  const BasketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BasketScreenBody()),

      bottomNavigationBar: BasketLowerBar(),
    );
  }
}
