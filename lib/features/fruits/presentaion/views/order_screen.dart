import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/order_lower_bar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/order_screen_body.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OrderScreenBody()),

      bottomNavigationBar: OrderLowerBar(),
    );
  }
}
