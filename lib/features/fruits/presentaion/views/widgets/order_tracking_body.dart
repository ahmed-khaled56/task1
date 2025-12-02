import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/cancel_sheet.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/order_tracking_stages.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/tracking_order_info.dart';

class OrderTrackingBody extends StatelessWidget {
  const OrderTrackingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> stages = [
      "Delivered",
      "Out for delivery",
      "Order shipped",
      "Confirmed",
      "Order Placed",
    ];
    final List<String> subtitles = [
      "Estimated for 10 September, 2021 ",
      "Estimated for 10 September, 2021 ",
      "Estimated for 10 September, 2021 ",
      "Your order has been confirmed",
      "We have received your order",
    ];

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                trackingOrderInfo(),
                SizedBox(height: portraitHeight(context) * .008),

                Padding(
                  padding: EdgeInsets.only(left: portraitWidth(context) * .066),
                  child: Column(
                    children: List.generate(stages.length, (index) {
                      bool isActive = index >= stages.indexOf("Confirmed");
                      bool isLast = index == stages.length - 1;

                      return OrderTrackingStep(
                        title: stages[index],
                        subtitle: subtitles[index],
                        isActive: isActive,
                        isLast: isLast,
                      );
                    }),
                  ),
                ),
                SizedBox(height: portraitHeight(context) * .04),
                CustomButton2(
                  Textcolor: Colors.white,
                  lable: "Confirm",
                  buttoncolor: Color(0xff204F38),
                  fontSize: getResponsiveFontSize(
                    fontSize: 18,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                  onPressed: () {},
                  hieght: portraitHeight(context) * .0547,
                  width: portraitWidth(context) * .8069,
                ),

                SizedBox(height: portraitHeight(context) * .02),

                CustomButton2(
                  Textcolor: Colors.white,
                  lable: "Cancel Order",
                  buttoncolor: Color(0xffFF4A4A),
                  fontSize: getResponsiveFontSize(
                    fontSize: 18,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                  onPressed: () {
                    CancelSheet(context);
                  },

                  hieght: portraitHeight(context) * .0547,
                  width: portraitWidth(context) * .8069,
                ),
                SizedBox(height: portraitHeight(context) * .04),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
