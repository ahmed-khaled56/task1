import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/payment/presentation/views/main_payment_screen.dart';
import 'package:task_1/features/payment/presentation/views/widgets/price_row_text.dart';

class basketLandScapLayout extends StatelessWidget {
  const basketLandScapLayout({super.key, required this.basketLsit});

  final List basketLsit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: basketLsit.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  basketLsit[index],
                  SizedBox(height: portraitHeight(context) * .01),
                ],
              );
            },
          ),
        ),
        Container(
          width: portraitWidth(context) * .00279,
          color: const Color(0xffD1D1D1),
          margin: EdgeInsets.symmetric(
            horizontal: portraitWidth(context) * .02,
          ),
        ),

        Expanded(
          flex: 4,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: portraitHeight(context) * .08),

                SizedBox(height: portraitHeight(context) * .020),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: portraitWidth(context) * .05,
                  ),
                  child: Column(
                    children: [
                      PriceRowText(
                        isTotal: false,
                        title: "Subtotal",
                        value: "36.00",
                      ),
                      SizedBox(height: portraitHeight(context) * .005),
                      PriceRowText(
                        isTotal: false,
                        title: "Shipping Charges",
                        value: "1.50",
                      ),
                      SizedBox(height: portraitHeight(context) * .01),
                      PriceRowText(
                        title: "Bag Total",
                        value: "37.50",
                        isTotal: true,
                      ),
                      SizedBox(height: portraitHeight(context) * .03),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "4 items in cart",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: getResponsiveFontSize(
                                    fontSize: 16,
                                    context: context,
                                  ),
                                  color: Color(0xff656565),
                                ),
                              ),
                              Text(
                                "37.50 KD",
                                style: TextStyle(
                                  fontSize: getResponsiveFontSize(
                                    fontSize: 16,
                                    context: context,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff656565),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          SizedBox(
                            width: portraitWidth(context) * .5209,
                            height: portraitHeight(context) * .047,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff2A5934),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainPaymentScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Proceed To Checkout",
                                style: TextStyle(
                                  fontSize: getResponsiveFontSize(
                                    fontSize: 16,
                                    context: context,
                                  ),
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
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
      ],
    );
  }
}
