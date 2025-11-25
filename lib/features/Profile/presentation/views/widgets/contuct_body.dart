import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/Profile/presentation/views/widgets/contact_textField.dart';
import 'package:task_1/features/Profile/presentation/views/widgets/social_row.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';

class ContuctBody extends StatelessWidget {
  const ContuctBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomUpperbar(title: "Contact Us"),
        SizedBox(height: MediaQuery.sizeOf(context).height * .02),
        ContactTextField(),
        SizedBox(height: MediaQuery.sizeOf(context).height * .02),
        CustomButton2(
          Textcolor: Colors.white,
          lable: "Submit",
          buttoncolor: Color(0xff204F38),
          fontSize: getResponsiveFontSize(fontSize: 18, context: context),
          fontWeight: FontWeight.bold,
          onPressed: () {},

          hieght: MediaQuery.sizeOf(context).height * .0547,
          width: MediaQuery.sizeOf(context).width * .8069,
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .02),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * .15,
            ),
            child: SocialRow(),
          ),
        ),
      ],
    );
  }
}
