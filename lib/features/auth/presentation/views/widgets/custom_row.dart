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
  });
  final String text1;
  final String text2;
  final double fontsize1;
  final double fontsize2;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: getResponsiveFontSize(fontSize: 16, context: context),
            fontWeight: FontWeight.normal,
            color: color1,
          ),
        ),

        Text(
          text2,
          style: TextStyle(
            fontSize: getResponsiveFontSize(fontSize: 16, context: context),
            fontWeight: FontWeight.normal,
            color: color2,
          ),
        ),
      ],
    );
  }
}
