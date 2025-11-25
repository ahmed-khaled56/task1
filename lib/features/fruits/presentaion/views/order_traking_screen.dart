import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/order_tracking_body.dart';

class OrderTrakingScreen extends StatelessWidget {
  const OrderTrakingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OrderTrackingBody()));
  }
}
