import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomUpperbar extends StatelessWidget {
  const CustomUpperbar({
    super.key,
    @required this.title,
    @required this.noIcon,
  });
  final String? title;
  final bool? noIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: portraitWidth(context) * .03,
            right: portraitWidth(context) * .03,
            top: portraitHeight(context) * .05,
          ),
          child: Row(
            children: [
              noIcon != true
                  ? GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios, color: Colors.black),
                    )
                  : Text(""),
              Spacer(),
              Text(
                title == null ? "" : title!,
                style: TextStyle(
                  color: const Color(0xff204F38),
                  fontSize: getResponsiveFontSize(
                    fontSize: 24,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: portraitHeight(context) * .0066),
          child: Container(
            height: portraitHeight(context) * 0.001,
            width: MediaQuery.sizeOf(context).width,
            color: Color(0xffDEDFDF),
          ),
        ),
      ],
    );
  }
}
