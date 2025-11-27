import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/auth/presentation/views/widgets/custom_button.dart';

void CancelSheet(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: portraitWidth(context) * 0.85,

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
                    top: portraitHeight(context) * .0235,
                    bottom: portraitHeight(context) * .0233,
                  ),

                  child: Text(
                    "Cancel Order",
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
                        right: portraitWidth(context) * .02,
                      ),
                      child: Text(
                        "Reason",
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
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: portraitHeight(context) * .0087,
                    bottom: portraitHeight(context) * .0108,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 8,
                      ),
                      hintText: "Please select reason",
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
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
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: portraitWidth(context) * .02,
                      ),
                      child: Text(
                        "Notes",
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
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: portraitHeight(context) * .00187,
                    bottom: portraitHeight(context) * .0108,
                  ),
                  child: TextField(
                    maxLines: 3,
                    // expands: true,
                    decoration: InputDecoration(
                      // isDense: false,
                      //   contentPadding: EdgeInsets.all(14),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 1,
                      ),
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
                    top: portraitHeight(context) * .0087,
                    bottom: portraitHeight(context) * .0108,
                  ),
                  child: CustomButton2(
                    Textcolor: Colors.white,

                    buttoncolor: Color(0xff204F38),
                    lable: "Confirm Cancelation",
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
}
