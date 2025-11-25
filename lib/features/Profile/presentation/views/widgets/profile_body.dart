import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/Profile/presentation/views/widgets/customImage.dart';
import 'package:task_1/features/Profile/presentation/views/widgets/custom_createProfile.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_text_feild.dart';
import 'package:task_1/features/auth/presentation/views/widgets/very_custom_textField.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Custom_upperbar.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.01697,
                  left: MediaQuery.sizeOf(context).width * 0.0953,
                ),
                child: Icon(Icons.arrow_back_ios, color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * .02),
          customProfileImage(),
          SizedBox(height: MediaQuery.sizeOf(context).height * .01),
          Text(
            "Welcome, Ahmed",
            style: TextStyle(
              fontSize: getResponsiveFontSize(fontSize: 24, context: context),
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * .02),
          createProfileBody(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 00.04399),
          Center(
            child: CustomButton2(
              fontWeight: FontWeight.bold,

              fontSize: 18,

              width: MediaQuery.sizeOf(context).width * 0.80697,
              hieght: MediaQuery.sizeOf(context).height * 00.0536,
              lable: "Update",
              Textcolor: Colors.white,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Form submitted successfully'),
                    ),
                  );
                } else {
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction;
                }
              },
              buttoncolor: Color(0xff204F38),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 00.0418),
        ],
      ),
    );
  }
}
