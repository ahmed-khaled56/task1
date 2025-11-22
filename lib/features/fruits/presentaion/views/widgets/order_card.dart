import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class OrderCard extends StatelessWidget {
  final String orderId;
  final String date;
  final String image;

  final int itemsCount;
  final String status;
  final Color statusColor;
  final Color iconBgColor;
  final String iconLink;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.date,
    required this.itemsCount,
    required this.status,
    required this.statusColor,
    required this.iconBgColor,

    required this.image,
    required this.iconLink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(image)),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * .02,
                right: MediaQuery.sizeOf(context).width * .07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "#$orderId",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getResponsiveFontSize(
                        fontSize: 18,
                        context: context,
                      ),
                    ),
                  ),

                  SizedBox(height: MediaQuery.sizeOf(context).height * .001),

                  Text(
                    "$date  •  $itemsCount items",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: getResponsiveFontSize(
                        fontSize: 16,
                        context: context,
                      ),
                    ),
                  ),

                  SizedBox(height: MediaQuery.sizeOf(context).height * .002),

                  Row(
                    children: [
                      Text(
                        "Status: ",
                        style: TextStyle(
                          color: Color(0xff656565),
                          fontSize: getResponsiveFontSize(
                            fontSize: 16,
                            context: context,
                          ),
                        ),
                      ),
                      Text(
                        status,
                        style: TextStyle(
                          color: statusColor,
                          fontWeight: FontWeight.normal,
                          fontSize: getResponsiveFontSize(
                            fontSize: 16,
                            context: context,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// RIGHT SIDE (icon)
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .0708,
            width: MediaQuery.sizeOf(context).width * .1534,
            child: Image(image: AssetImage(iconLink)),
          ),
        ],
      ),
    );
  }
}
