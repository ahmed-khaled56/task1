import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class productImage extends StatelessWidget {
  const productImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.26,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/product_image.png'),
              height: MediaQuery.sizeOf(context).height * 0.2489,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * .0139,
                  right: MediaQuery.sizeOf(context).width * .08139,
                ),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * .3488,
                  height: MediaQuery.sizeOf(context).height * .0311,
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
