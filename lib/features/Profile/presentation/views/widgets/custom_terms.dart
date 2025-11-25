import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomTerms extends StatelessWidget {
  const CustomTerms({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.sizeOf(context).width * .04,

        right: MediaQuery.sizeOf(context).width * .05,
        bottom: MediaQuery.sizeOf(context).height * .03,
        top: MediaQuery.sizeOf(context).height * .01,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: getResponsiveFontSize(fontSize: 20, context: context),
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontFamily: "Arial",
        ),
      ),
    );
  }
}
