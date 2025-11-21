import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.fontsize1,
    required this.fontsize2,
    required this.color1,
    required this.color2,
    required this.ontap,
    this.decoration,
  });

  final String text1;
  final String text2;
  final double fontsize1;
  final double fontsize2;
  final Color color1;
  final Color color2;
  final void Function()? ontap;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,

        children: [
          Text(
            text1,
            textHeightBehavior: const TextHeightBehavior(
              applyHeightToFirstAscent: false,
              applyHeightToLastDescent: false,
            ),
            style: TextStyle(
              fontSize: getResponsiveFontSize(
                fontSize: fontsize1,
                context: context,
              ),
              color: color1,
              height: 1.1,
            ),
          ),

          GestureDetector(
            onTap: ontap,
            child: Text(
              text2,
              textHeightBehavior: const TextHeightBehavior(
                applyHeightToFirstAscent: false,
                applyHeightToLastDescent: false,
              ),
              style: TextStyle(
                fontSize: getResponsiveFontSize(
                  fontSize: fontsize2,
                  context: context,
                ),
                color: color2,
                height: 1.1,
                decoration: decoration ?? TextDecoration.underline,
                decorationColor: color2,
                decorationThickness: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
