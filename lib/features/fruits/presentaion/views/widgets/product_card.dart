import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.selleceticon,

    required this.price,

    required this.productName,

    required this.imageLink,
    this.note,
    this.priceNote,
  });

  final String? selleceticon;

  final String? price;
  final String? priceNote;
  final String? imageLink;

  final String? productName;
  final String? note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * .0209,
        vertical: MediaQuery.sizeOf(context).height * .00086,
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .124,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * 0.03,
              top: MediaQuery.sizeOf(context).height * 0.003,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    imageLink!,
                    width: MediaQuery.sizeOf(context).width * .132,
                    height: MediaQuery.sizeOf(context).height * .08,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * .04),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            productName ?? '',
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(
                                fontSize: 16,
                                context: context,
                              ),
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff292727),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right:
                                  MediaQuery.sizeOf(context).shortestSide *
                                  .0279,
                            ),
                            child: Text(
                              "$price",
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(
                                  fontSize: 14,
                                  context: context,
                                ),
                                color: priceNote != null
                                    ? const Color(0xff656565)
                                    : const Color(0xffBF2D21),
                              ),
                            ),
                          ),
                          priceNote != null
                              ? Text(
                                  "$priceNote",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: getResponsiveFontSize(
                                      fontSize: 14,
                                      context: context,
                                    ),
                                    color: const Color(0xffD1D1D1),
                                  ),
                                )
                              : Text(''),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * .237,
                            height: MediaQuery.sizeOf(context).height * .0236,
                            decoration: BoxDecoration(
                              color: Color(0xffDF958F),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "$note",
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                selleceticon != null
                    ? Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.sizeOf(context).width * .079,
                        ),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * .127,
                          height: MediaQuery.sizeOf(context).height * .05,
                          child: Image.asset(selleceticon!, fit: BoxFit.cover),
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.sizeOf(context).width * .20788,
                        ),
                        child: Text("   "),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
