import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            //right: MediaQuery.sizeOf(context).width * .188,
            left: MediaQuery.sizeOf(context).width * .0488,
          ),
          child: Row(
            children: [
              Text(
                "Category Name",
                style: TextStyle(
                  color: Color(0xff204F38),
                  fontSize: getResponsiveFontSize(
                    fontSize: 16,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: MediaQuery.sizeOf(context).width * .444),

              Expanded(
                child: Text(
                  "Price",
                  style: TextStyle(
                    color: Color(0xff656565),
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
        ),
        Padding(
          padding: EdgeInsets.only(
            // right: MediaQuery.sizeOf(context).width * .0465,
            left: MediaQuery.sizeOf(context).width * .0488,
          ),
          child: Row(
            children: [
              Text(
                "Product name",
                style: TextStyle(
                  color: Color(0xff292727),
                  fontSize: getResponsiveFontSize(
                    fontSize: 24,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * .2255,
                ),
              ),

              Text(
                "KD12.00",
                style: TextStyle(
                  color: Color(0xff656565),
                  fontSize: getResponsiveFontSize(
                    fontSize: 20,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: MediaQuery.sizeOf(context).width * .0209),
              Expanded(
                child: Text(
                  "KD14.00",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Color(0xffDF958F),
                    fontSize: getResponsiveFontSize(
                      fontSize: 17,
                      context: context,
                    ),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.sizeOf(context).width * .0265,
            left: MediaQuery.sizeOf(context).width * .0488,
          ),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.,",
            maxLines: 4,
            style: TextStyle(
              fontSize: getResponsiveFontSize(fontSize: 16, context: context),

              fontWeight: FontWeight.normal,
              color: Color(0xff656565),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * .0165,
              left: MediaQuery.sizeOf(context).width * .0488,
            ),
            child: Text(
              "Sell Per : Kartoon",

              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Color(0xff656565),
                fontSize: getResponsiveFontSize(fontSize: 16, context: context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
