import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
    required this.productName,
    required this.price,
    required this.beforePrice,
    this.note,
  });
  final String productName;
  final String price;
  final String beforePrice;
  final String? note;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .134,
      width: MediaQuery.sizeOf(context).width * .94,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width * .03,
            top: MediaQuery.sizeOf(context).height * .003,
            right: MediaQuery.sizeOf(context).width * .03,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/productImage.png",
                  width: MediaQuery.sizeOf(context).width * .2223,
                  height: MediaQuery.sizeOf(context).height * .1033,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(width: MediaQuery.sizeOf(context).width * .05),

              // PRODUCT TEXTS
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Name",
                          style: TextStyle(
                            fontSize: getResponsiveFontSize(
                              fontSize: 16,
                              context: context,
                            ),
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff292727),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 1,
                                offset: Offset(0, 2),
                              ),
                            ],
                            border: Border.all(color: Colors.black26, width: 1),
                          ),
                          child: Icon(
                            Icons.close,
                            size: 20,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          "12.00 KD ",
                          style: TextStyle(
                            fontSize: getResponsiveFontSize(
                              fontSize: 14,
                              context: context,
                            ),
                            color: const Color(0xff350B0B),
                          ),
                        ),
                        Text(
                          "14.00 KD",
                          style: TextStyle(
                            fontSize: getResponsiveFontSize(
                              fontSize: 14,
                              context: context,
                            ),
                            decoration: TextDecoration.lineThrough,
                            color: const Color(0xffD1D1D1),
                          ),
                        ),
                      ],
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(
                            child: Text(
                              "Store Name :",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: getResponsiveFontSize(
                                  fontSize: 16,
                                  context: context,
                                ),
                                color: Color(0xff292727),
                              ),
                            ),
                          ),

                          Expanded(
                            child: SizedBox(
                              child: Text(
                                "Store 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getResponsiveFontSize(
                                    fontSize: 16,
                                    context: context,
                                  ),
                                  color: Color(0xff292727),
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width * .09,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
