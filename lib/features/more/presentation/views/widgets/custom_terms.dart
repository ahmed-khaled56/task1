import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomTerms extends StatelessWidget {
  const CustomTerms({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: portraitWidth(context) * .04,

        right: portraitWidth(context) * .05,
        bottom: portraitHeight(context) * .03,
        top: portraitHeight(context) * .01,
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
