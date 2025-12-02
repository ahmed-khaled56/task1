import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/Basket_portarait_layout.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/basket_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/basket_landscape_layout.dart';

class BasketScreenBody extends StatelessWidget {
  const BasketScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> basketLsit = [
      BasketItemCard(
        beforePrice: "14.00 KD",
        price: "12.00 KD",

        productName: "Product name",
        note: "Up to 10% Off",
      ),

      BasketItemCard(
        beforePrice: "14.00 KD",
        price: "12.00 KD",

        productName: "Product name",
      ),

      BasketItemCard(
        beforePrice: "14.00 KD",
        price: "12.00 KD",

        productName: "Product name",
      ),
    ];
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isLandscape = constraints.maxWidth > constraints.maxHeight;

        if (!isLandscape) {
          return BasketPortraitLayout(basketLsit: basketLsit);
        }

        return basketLandScapLayout(basketLsit: basketLsit);
      },
    );

    //  Padding(
    //   padding: EdgeInsets.only(bottom: 2),
    //   child: SingleChildScrollView(
    //     child: Padding(
    //       padding: EdgeInsets.only(bottom: 100),
    //       child: Column(
    //         children: [
    //                // body: LayoutBuilder(
    //   //   builder: (context, constraints) {
    //   //     if (constraints.maxWidth <= 600) {
    //   //       return SplashViewBodyPhoneLayout();
    //   //     } else {
    //   //       return SplashViewBodyPhoneLayout();
    //   //     }
    //   //   },
    //   // ),

    //           ListView.builder(
    //             padding: EdgeInsets.all(16),
    //             itemCount: basketLsit.length,
    //             itemBuilder: (context, index) {
    //               return Column(
    //                 children: [
    //                   basketLsit[index],
    //                    SizedBox(height: portraitHeight(context) * .01),

    //                 ],
    //               );
    //             },
    //           ),
    //           SizedBox(height: portraitHeight(context) * .08),
    //           Padding(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: portraitWidth(context) * .05,
    //               vertical: portraitHeight(context) * .009,
    //             ),
    //             child: DottedLine(color: Color(0xffD1D1D1)),
    //           ),
    //           SizedBox(height: portraitHeight(context) * .020),
    //           Padding(
    //             padding: EdgeInsets.symmetric(
    //               horizontal: portraitWidth(context) * .05,
    //             ),
    //             child: Column(
    //               children: [
    //                 PriceRowText(
    //                   isTotal: false,
    //                   title: "Subtotal",
    //                   value: "36.00",
    //                 ),
    //                 SizedBox(height: portraitHeight(context) * .005),

    //                 PriceRowText(
    //                   isTotal: false,
    //                   title: "Shipping Charges",
    //                   value: "1.50",
    //                 ),
    //                 SizedBox(height: portraitHeight(context) * .01),

    //                 PriceRowText(
    //                   title: "Bag Total",
    //                   value: "37.50",
    //                   isTotal: true,
    //                 ),

    //                 SizedBox(height: portraitHeight(context) * .03),
    //                 Row(
    //                   children: [
    //                     Column(
    //                       children: [
    //                         Text(
    //                           "4 items in cart",

    //                           style: TextStyle(
    //                             fontWeight: FontWeight.normal,
    //                             fontSize: getResponsiveFontSize(
    //                               fontSize: 16,
    //                               context: context,
    //                             ),
    //                             color: Color(0xff656565),
    //                           ),
    //                         ),

    //                         Text(
    //                           "37.50 KD",
    //                           style: TextStyle(
    //                             fontSize: getResponsiveFontSize(
    //                               fontSize: 16,
    //                               context: context,
    //                             ),

    //                             fontWeight: FontWeight.bold,
    //                             color: const Color(0xff656565),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     Spacer(),
    //                     Align(
    //                       alignment: Alignment.bottomRight,
    //                       child: SizedBox(
    //                         width: portraitWidth(context) * .5209,
    //                         height: portraitHeight(context) * .047,
    //                         child: ElevatedButton(
    //                           style: ElevatedButton.styleFrom(
    //                             backgroundColor: const Color(0xff2A5934),
    //                             shape: RoundedRectangleBorder(
    //                               borderRadius: BorderRadius.circular(20),
    //                             ),
    //                           ),
    //                           onPressed: () {
    //                             Navigator.push(
    //                               context,
    //                               MaterialPageRoute(
    //                                 builder: (context) => MainPaymentScreen(),
    //                               ),
    //                             );
    //                           },
    //                           child: Text(
    //                             "Proceed To Checkout",
    //                             style: TextStyle(
    //                               fontSize: getResponsiveFontSize(
    //                                 fontSize: 16,
    //                                 context: context,
    //                               ),
    //                               fontWeight: FontWeight.w500,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ),
    //           //  Flexible(child: SizedBox(height: MediaQuery.sizeOf(context).height)),
    //           // BasketLowerBar(),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
