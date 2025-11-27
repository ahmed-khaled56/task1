import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

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
        horizontal: portraitWidth(context) * .0209,
        vertical: portraitHeight(context) * .00086,
      ),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                child: imageLink != null
                    ? Image.asset(
                        imageLink!,
                        width: portraitWidth(context) * .132,
                        height: portraitHeight(context) * .061,
                        fit: BoxFit.cover,
                      )
                    : Text(""),
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
                                  right: portraitWidth(context) * .02558,
                                ),
                                child: SizedBox(
                                  width: portraitWidth(context) * .0496,
                                  height: portraitHeight(context) * .0250,
                                  child: Image.asset(icon!, fit: BoxFit.cover),
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
                          width: portraitWidth(context) * .0116,
                          height: portraitHeight(context) * .004914,
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
                          width: portraitWidth(context) * .0116,
                          height: portraitHeight(context) * .004914,
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
    );
  }
}
