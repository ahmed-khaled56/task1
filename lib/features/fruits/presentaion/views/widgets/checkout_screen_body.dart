import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/basket_lower_bar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/select_time.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/stepTap.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/stepdot.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/steper_chseckOut.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/stepline.dart';

class CheckoutScreenBody extends StatefulWidget {
  const CheckoutScreenBody({super.key});

  @override
  State<CheckoutScreenBody> createState() => _CheckoutScreenBodyState();
}

class _CheckoutScreenBodyState extends State<CheckoutScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomUpperbar(title: "Checkout"),
        SizedBox(height: MediaQuery.sizeOf(context).height * .01),
        SteperCheckout(),
        SizedBox(height: MediaQuery.sizeOf(context).height * .01),
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.sizeOf(context).height * .016,
          ),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.001,
            width: MediaQuery.sizeOf(context).width,
            color: Color(0xffBFBFBF),
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * .001),

        SelectTime(),
        SizedBox(height: MediaQuery.sizeOf(context).height * .35),
        CustomButton2(
          Textcolor: Colors.white,

          lable: "Continue",
          buttoncolor: Color(0xff204F38),
          fontSize: getResponsiveFontSize(fontSize: 18, context: context),
          fontWeight: FontWeight.bold,
          onPressed: () {},
          hieght: MediaQuery.sizeOf(context).height * .0547,
          width: MediaQuery.sizeOf(context).width * .8069,
        ),
        Expanded(child: SizedBox(height: MediaQuery.sizeOf(context).height)),
        BasketLowerBar(),
      ],
    );
  }
}
