import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class custom_skip extends StatelessWidget {
  const custom_skip({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,

          child: Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.sizeOf(context).width * 0.086,
            ),
            child: Text(
              "Skip",
              style: TextStyle(
                // decoration: TextDecoration.underline,
                // decorationColor: Colors.grey[700], // لون الخط
                // decorationThickness: 2,
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),
              ),
            ),
          ),
        ),
        SizedBox(height: 2),

        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.sizeOf(context).width * 0.08139,
            ),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.07511,
              height: MediaQuery.sizeOf(context).height * .001,
              color: Color(0xff656565),
              margin: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * .00429,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
