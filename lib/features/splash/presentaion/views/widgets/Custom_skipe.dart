import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class custom_skip extends StatelessWidget {
  const custom_skip({
    super.key,
    @required this.onTap,
    @required this.isNot = false,
  });
  final void Function()? onTap;
  final bool? isNot;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final orenationDiriction = MediaQuery.of(context).orientation;
    // print(orenationDiriction);

    final realHeight = size.height > size.width ? size.height : size.width;
    final realWidth = size.width < size.height ? size.width : size.height;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,

            child: Padding(
              padding: EdgeInsets.only(right: portraitWidth(context) * 0.086),
              child: Text(
                "Skip",
                style: TextStyle(
                  color: isNot! ? Colors.white : Color(0xff656565),
                  fontSize: getResponsiveFontSize(
                    fontSize: 14,
                    context: context,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: portraitHeight(context) * .00214),

          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: portraitWidth(context) * 0.08139),
              child: Container(
                width: portraitWidth(context) * 0.07511,
                height: portraitHeight(context) * .001,
                color: isNot! ? Colors.white : Color(0xff656565),
                margin: EdgeInsets.only(top: realHeight * .00429),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
