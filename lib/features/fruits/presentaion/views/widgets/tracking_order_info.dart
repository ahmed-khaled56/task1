import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class trackingOrderInfo extends StatelessWidget {
  const trackingOrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Order Code:",
              style: TextStyle(
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 18, context: context),
                fontWeight: FontWeight.normal,
              ),
            ),

            Text(
              "#882610",
              style: TextStyle(
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 18, context: context),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .008),
        Text(
          "3 items - 37.50 KD",
          style: TextStyle(
            color: Color(0xff656565),
            fontSize: getResponsiveFontSize(fontSize: 18, context: context),
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .008),
        Text(
          "Payment Method : Cash",
          style: TextStyle(
            color: Color(0xff656565),
            fontSize: getResponsiveFontSize(fontSize: 18, context: context),
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
