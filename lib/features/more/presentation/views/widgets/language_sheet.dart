import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/filter_options.dart';

bool option1 = false;
bool option2 = false;
void LanguageSheet(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Center(
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.82,

                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.sizeOf(context).height * .014,
                      ),
                      child: CircleCheckItem(
                        isChecked: option1,
                        onChanged: (value) {
                          setState(() {
                            option1 = true;
                            option2 = false;
                          });
                        },
                        flag: "assets/images/arab.png",
                        label: "العربية",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.sizeOf(context).height * .0243,
                      ),
                      child: CircleCheckItem(
                        isChecked: option2,
                        onChanged: (value) {
                          setState(() {
                            option2 = true;
                            option1 = false; // lock first
                          });
                        },
                        flag: "assets/images/eng.png",
                        label: "English",
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.sizeOf(context).height * .0249,
                      ),
                      child: CustomButton2(
                        Textcolor: Colors.white,

                        buttoncolor: Color(0xff204F38),
                        lable: "Apply Filter",
                        onPressed: () {},
                        fontSize: getResponsiveFontSize(
                          fontSize: 16,
                          context: context,
                        ),
                        fontWeight: FontWeight.bold,
                        hieght: portraitHeight(context) * .045,
                        width: portraitWidth(context) * .567,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Close",
                        style: TextStyle(
                          fontSize: getResponsiveFontSize(
                            fontSize: 16,
                            context: context,
                          ),
                          color: Color(0xff656565),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
