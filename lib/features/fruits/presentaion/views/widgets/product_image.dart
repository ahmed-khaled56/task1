import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class productImage extends StatelessWidget {
  const productImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: portraitHeight(context) * 0.26,
        width: portraitWidth(context),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/product_image.png'),
              height: portraitHeight(context) * 0.2489,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: portraitHeight(context) * .0139,
                  right: portraitWidth(context) * .08139,
                ),
                child: Container(
                  width: portraitWidth(context) * .3488,
                  height: portraitHeight(context) * .0311,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "10% Off Discount",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: getResponsiveFontSize(
                          fontSize: 16,
                          context: context,
                        ),
                        color: Color(0xff656565),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
