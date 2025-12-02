import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/payment/presentation/views/widgets/select_time.dart';

class CheckoutScreenBody extends StatelessWidget {
  const CheckoutScreenBody({
    super.key,
    required this.currentIndex,
    required this.onPressed,
  });
  final int? currentIndex;
  final void Function()? onPressed;
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectTime(),

        Padding(
          padding: EdgeInsets.only(top: portraitHeight(context) * .3917),
          child: CustomButton2(
            Textcolor: Colors.white,
            lable: currentIndex == 2 ? "Place Order" : "Continue",
            buttoncolor: Color(0xff204F38),
            fontSize: getResponsiveFontSize(fontSize: 18, context: context),
            fontWeight: FontWeight.bold,
            onPressed: onPressed!,
            hieght: portraitHeight(context) * .0547,
            width: portraitWidth(context) * .8,
          ),
        ),
      ],
    );
  }
}
