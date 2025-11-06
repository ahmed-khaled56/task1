import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/customButtons.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_oprions.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.0911),

        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .0858,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: MediaQuery.of(context).size.width * .0319,
              height: MediaQuery.of(context).size.height * .01456,
              child: Icon(Icons.close, color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .067),

        Image(
          width: MediaQuery.of(context).size.width * .6209,
          height: MediaQuery.of(context).size.height * .0826,
          image: AssetImage("assets/images/Fruit Market.png"),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .03648),
        Text(
          "Welcome to Our app",
          style: TextStyle(
            color: Colors.black,
            fontSize: getResponsiveFontSize(fontSize: 28, context: context),

            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .05579),
        CustomButtons(),
        SizedBox(height: MediaQuery.of(context).size.height * .0847),
        CustomOptions(),
      ],
    );
  }
}
