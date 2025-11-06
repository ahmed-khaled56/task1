import 'package:flutter/material.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_row.dart';

class CustomOptions extends StatelessWidget {
  const CustomOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRow(
          fontsize1: 16,
          fontsize2: 16,
          color1: Colors.black,
          color2: Color(0xff004D8E),
          text1: "already member? ",
          text2: "Sign In",
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .0214),
        CustomRow(
          fontsize1: 16,
          fontsize2: 16,
          color1: Color(0xff88909C),
          color2: Color(0xff005B96),
          text1: "By continue you agree to our ",
          text2: "Terms of service ",
        ),
        CustomRow(
          fontsize1: 16,
          fontsize2: 16,
          color1: Color(0xff88909C),
          color2: Color(0xff005B96),
          text1: "and our ",
          text2: "Privacy Policy",
        ),
      ],
    );
  }
}
