import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';
import 'package:task_1/features/payment/presentation/views/failure_screen.dart';

class DoneScreenBody extends StatelessWidget {
  const DoneScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomUpperbar(title: "Checkout"),

            SizedBox(height: MediaQuery.sizeOf(context).height * .08),

            Image(image: AssetImage("assets/images/done.png")),

            SizedBox(height: MediaQuery.sizeOf(context).height * .06),

            Text(
              "YOUR ORDER IS CONFIRMED!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff204F38),
                fontSize: getResponsiveFontSize(fontSize: 26, context: context),
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * .02),

            Text(
              "Your order code: #243188",
              style: TextStyle(
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 20, context: context),
              ),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * .01),

            Text(
              "Thank you for choosing our products!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 20, context: context),
              ),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * .05),

            /// زرار Continue Shopping
            CustomButton2(
              Textcolor: Colors.white,
              lable: "Continue Shopping",
              buttoncolor: Color(0xff204F38),
              fontSize: getResponsiveFontSize(fontSize: 18, context: context),
              fontWeight: FontWeight.bold,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FailureScreen()),
                );
              },
              hieght: MediaQuery.sizeOf(context).height * .0547,
              width: MediaQuery.sizeOf(context).width * .8069,
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * .02),

            /// زرار Track Order
            CustomButton2(
              Textcolor: Color(0xff204F38),
              lable: "Track Order",
              buttoncolor: Colors.white,
              fontSize: getResponsiveFontSize(fontSize: 18, context: context),
              fontWeight: FontWeight.bold,
              onPressed: () {},
              hieght: MediaQuery.sizeOf(context).height * .0547,
              width: MediaQuery.sizeOf(context).width * .8069,
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * .04),
          ],
        ),
      ),
    );
  }
}
