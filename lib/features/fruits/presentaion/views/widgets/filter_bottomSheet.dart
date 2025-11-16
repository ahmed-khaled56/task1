import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/filter_options.dart';

bool option1 = false;
bool option2 = false;
void filterSheet(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
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
                    top: MediaQuery.sizeOf(context).height * .0235,
                    bottom: MediaQuery.sizeOf(context).height * .0233,
                  ),

                  child: Text(
                    "Filter by",
                    style: TextStyle(
                      color: Color(0xff292727),
                      fontSize: getResponsiveFontSize(
                        fontSize: 18,
                        context: context,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.sizeOf(context).width * .02,
                      ),
                      child: Text(
                        "Delivered To",
                        style: TextStyle(
                          color: Color(0xff858D9A),
                          fontSize: getResponsiveFontSize(
                            fontSize: 14,
                            context: context,
                          ),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Image(image: AssetImage("assets/images/motor.png")),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height * .0187,
                    bottom: MediaQuery.sizeOf(context).height * .0108,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 8,
                      ),
                      hintText: "All Areas",
                      prefixIcon: Icon(Icons.keyboard_arrow_down),
                      hintStyle: TextStyle(
                        fontSize: getResponsiveFontSize(
                          fontSize: 14,
                          context: context,
                        ),
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.sizeOf(context).height * .014,
                  ),
                  child: CircleCheckItem(label: "offers"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.sizeOf(context).height * .0243,
                  ),
                  child: CircleCheckItem(label: "Free Delivery"),
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
                    hieght: MediaQuery.sizeOf(context).height * .045,
                    width: MediaQuery.sizeOf(context).width * .567,
                  ),
                ),
                Text(
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
              ],
            ),
          ),
        ),
      );
    },
  );
}
