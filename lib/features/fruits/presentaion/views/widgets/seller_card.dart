import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/card_info.dart';

class SellerCard extends StatelessWidget {
  const SellerCard({
    super.key,
    @required this.icon,

    required this.timeDelev,
    required this.openClosd,

    required this.sellerName,
    required this.rate,
    required this.imageLink,
  });

  final String? icon;

  final String? timeDelev;
  final String? imageLink;
  final String? openClosd;

  final String? sellerName;
  final double? rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * .0209,
        vertical: MediaQuery.sizeOf(context).height * .00086,
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .104,
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
                  child: imageLink != null
                      ? Image.asset(
                          imageLink!,
                          width: MediaQuery.sizeOf(context).width * .132,
                          height: MediaQuery.sizeOf(context).height * .061,
                          fit: BoxFit.cover,
                        )
                      : Text(""),
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
                            sellerName ?? '',
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(
                                fontSize: 19,
                                context: context,
                              ),
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff292727),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Spacer(),
                          icon != null
                              ? Padding(
                                  padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.sizeOf(context).width *
                                        .02558,
                                  ),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width *
                                        .0496,
                                    height:
                                        MediaQuery.sizeOf(context).height *
                                        .0250,
                                    child: Image.asset(
                                      icon!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.sizeOf(context).width *
                                        .20788,
                                  ),
                                  child: Text("   "),
                                ),
                        ],
                      ),

                      Row(
                        children: [
                          Text(
                            "Delivery : $timeDelev",
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(
                                fontSize: 14,
                                context: context,
                              ),
                              color: const Color(0xff204F38),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * .0116,
                            height: MediaQuery.sizeOf(context).height * .004914,
                            decoration: BoxDecoration(
                              color: Color(0xffC8C8C8),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            openClosd ?? '',
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(
                                fontSize: 14,
                                context: context,
                              ),
                              color: openClosd == "open"
                                  ? const Color(0xff00BB1A)
                                  : const Color(0xffFF4A4A),
                            ),
                          ),
                          SizedBox(width: 8),

                          Container(
                            width: MediaQuery.sizeOf(context).width * .0116,
                            height: MediaQuery.sizeOf(context).height * .004914,
                            decoration: BoxDecoration(
                              color: Color(0xffC8C8C8),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "$rate",
                            style: TextStyle(
                              fontSize: getResponsiveFontSize(
                                fontSize: 14,
                                context: context,
                              ),
                              color: const Color(0xff656565),
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
      ),
    );
  }
}
