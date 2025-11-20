import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/stepTap.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/stepdot.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/stepline.dart';

class SteperCheckout extends StatefulWidget {
  const SteperCheckout({super.key});

  @override
  State<SteperCheckout> createState() => _SteperCheckoutState();
}

class _SteperCheckoutState extends State<SteperCheckout> {
  @override
  int currentStep = 0;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width * .128,
            right: MediaQuery.sizeOf(context).width * .128,
            top: MediaQuery.sizeOf(context).width * .005,
          ),
          child: Row(
            children: [
              Stepdot(active: currentStep >= 0),
              const SizedBox(width: 10),
              const Expanded(child: DashedLine()),
              const SizedBox(width: 6),
              Stepdot(active: currentStep >= 1),
              const SizedBox(width: 6),
              const Expanded(child: DashedLine()),
              const SizedBox(width: 6),
              Stepdot(active: currentStep >= 2),
            ],
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * .015),

        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .04,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Steptap(text: "Delivery Time", active: true),
              Steptap(text: "Delivery Address", active: false),
              Steptap(text: "Payment", active: false),
            ],
          ),
        ),
      ],
    );
  }
}
