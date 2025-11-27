import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
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
        horizontal: portraitWidth(context) * .0209,
        vertical: portraitHeight(context) * .00086,
      ),
      child: SizedBox(
        height: portraitHeight(context) * .124,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(
              left: portraitWidth(context) * 0.03,
              top: portraitHeight(context) * 0.003,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    imageLink!,
                    width: portraitWidth(context) * .132,
                    height: portraitHeight(context) * .08,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: portraitWidth(context) * .04),
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
                              right: portraitWidth(context) * .0279,
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
                            width: portraitWidth(context) * .237,
                            height: portraitHeight(context) * .0236,
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
                          right: portraitWidth(context) * .079,
                        ),
                        child: SizedBox(
                          width: portraitWidth(context) * .127,
                          height: portraitHeight(context) * .05,
                          child: Image.asset(selleceticon!, fit: BoxFit.cover),
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(
                          right: portraitWidth(context) * .20788,
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
