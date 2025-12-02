import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_text_feild.dart';
import 'package:task_1/features/auth/presentation/views/widgets/very_custom_textField.dart';

class createProfileBody extends StatelessWidget {
  const createProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: portraitWidth(context) * 0.0953,
            bottom: portraitHeight(context) * 0.01448,
            top: portraitHeight(context) * 0.01697,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Full name",
              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),

                fontWeight: FontWeight.normal,
                color: Color(0xff858D9A),
              ),
            ),
          ),
        ),
        CustomTextFeild(
          hintText: "Firist and Last Name",
          hight: portraitHeight(context) * .0546,
          width: portraitWidth(context) * .8069,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: portraitHeight(context) * 0.03487,
            bottom: portraitHeight(context) * 0.01448,
            left: portraitWidth(context) * 0.0953,
            // bottom: MediaQuery.sizeOf(context).height * 0.01448,
          ),
          child: Row(
            children: [
              Text(
                "Phone Number with Whatsapp",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    fontSize: 14,
                    context: context,
                  ),

                  fontWeight: FontWeight.normal,
                  color: Color(0xff858D9A),
                ),
              ),
              Text(
                " *",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    fontSize: 14,
                    context: context,
                  ),

                  fontWeight: FontWeight.normal,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),

        PhoneField(
          hieght: portraitHeight(context) * .0546,
          width: portraitWidth(context) * 0.80697,
        ),

        Padding(
          padding: EdgeInsets.only(
            top: portraitHeight(context) * 0.03487,
            bottom: portraitHeight(context) * 0.01448,
            left: portraitWidth(context) * 0.0953,
            // bottom: MediaQuery.sizeOf(context).height * 0.01448,
          ),
          child: Row(
            children: [
              Text(
                "Password",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    fontSize: 14,
                    context: context,
                  ),

                  fontWeight: FontWeight.normal,
                  color: Color(0xff858D9A),
                ),
              ),
              Text(
                "*",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    fontSize: 14,
                    context: context,
                  ),

                  fontWeight: FontWeight.normal,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        CustomTextFeild(
          hintText: "Password",
          hight: portraitHeight(context) * 00.0536,
          width: portraitWidth(context) * 0.80697,
        ),
      ],
    );
  }
}
