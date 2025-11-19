import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .9,
      height: MediaQuery.sizeOf(context).height * .054,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFEFEFE),
      ),
      child: TextField(
        onChanged: (value) {},

        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * .073,
            ),
            child: Icon(Icons.search),
          ),
          hint: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * .0409,
            ),
            child: Text(
              "What are you looking for?",
              style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 14, context: context),
                fontWeight: FontWeight.normal,
                color: Color(0xff8A8B8B),
              ),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff8A8B8B), width: 1),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
