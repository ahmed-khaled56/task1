import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class ContactTextField extends StatelessWidget {
  const ContactTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * .08,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.sizeOf(context).width * .02,
                ),
                child: Text(
                  "Name",
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
              top: MediaQuery.sizeOf(context).height * .0087,
              bottom: MediaQuery.sizeOf(context).height * .0108,
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 8,
                ),
                //  hintText: "Please select reason",
                // suffixIcon: Icon(Icons.keyboard_arrow_down),
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
                  right: MediaQuery.sizeOf(context).width * .02,
                ),
                child: Text(
                  "Mobile Number",
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
              top: MediaQuery.sizeOf(context).height * .0087,
              bottom: MediaQuery.sizeOf(context).height * .0108,
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 8,
                ),
                //  hintText: "Please select reason",
                // suffixIcon: Icon(Icons.keyboard_arrow_down),
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
                  right: MediaQuery.sizeOf(context).width * .02,
                ),
                child: Text(
                  "Message",
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
              top: MediaQuery.sizeOf(context).height * .00187,
              bottom: MediaQuery.sizeOf(context).height * .0108,
            ),
            child: TextField(
              maxLines: 6,
              // expands: true,
              decoration: InputDecoration(
                // isDense: false,
                //   contentPadding: EdgeInsets.all(14),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 8,
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
        ],
      ),
    );
  }
}
