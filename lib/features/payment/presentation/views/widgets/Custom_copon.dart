import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';

class customCopon extends StatelessWidget {
  const customCopon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * .037,
            ),
            child: Text(
              "Coupon Code",

              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 18, context: context),
                fontWeight: FontWeight.bold,
                color: Color(0xff292727),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
