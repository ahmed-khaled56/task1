import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class BasketItemCard extends StatelessWidget {
  const BasketItemCard({
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
      height: MediaQuery.sizeOf(context).height * .124,
      width: MediaQuery.sizeOf(context).width * .96,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width * .06,
            top: MediaQuery.sizeOf(context).height * .003,
            right: MediaQuery.sizeOf(context).width * .03,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/productImage.png",
                  width: MediaQuery.sizeOf(context).width * .2023,
                  height: MediaQuery.sizeOf(context).height * .0933,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(width: MediaQuery.sizeOf(context).width * .04),

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
                        Icon(
                          Icons.delete_forever,

                          size: 28,
                          color: Colors.black,
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

                    Row(
                      children: [
                        note != null
                            ? Container(
                                width: MediaQuery.sizeOf(context).width * .237,
                                height:
                                    MediaQuery.sizeOf(context).height * .0236,
                                decoration: BoxDecoration(
                                  color: const Color(0xffDF958F),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    "Up to 10% Off",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: getResponsiveFontSize(
                                        fontSize: 12,
                                        context: context,
                                      ),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            : Text(""),

                        Expanded(
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * .09,
                          ),
                        ),

                        Container(
                          height: MediaQuery.sizeOf(context).height * .0293,
                          width: MediaQuery.sizeOf(context).width * .275,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: const Color(0xffD1D1D1)),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.remove, size: 16),
                              Text("1"),
                              Icon(Icons.add, size: 16),
                            ],
                          ),
                        ),
                      ],
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
