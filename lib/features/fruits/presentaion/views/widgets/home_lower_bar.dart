import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/more/presentation/views/more_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/basket_view.dart';
import 'package:task_1/features/fruits/presentaion/views/favourite_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/order_screen.dart';

class LowerBar extends StatefulWidget {
  const LowerBar({super.key});

  @override
  State<LowerBar> createState() => _LowerBarState();
}

class _LowerBarState extends State<LowerBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: portraitWidth(context),
      height: portraitHeight(context) * 0.067596,
      decoration: BoxDecoration(
        color: Color(0xff204F38),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),

      child: Padding(
        padding: EdgeInsets.only(left: portraitWidth(context) * 0.04),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image(image: AssetImage("assets/images/selectedhome.png")),
            ),
            //  Spacer(),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderScreen()),
                  );
                },
                child: Image(image: AssetImage("assets/images/iconBar2.png")),
              ),
            ),

            //   Spacer(),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BasketView()),
                  );
                },

                child: Image(image: AssetImage("assets/images/IconBar3.png")),
              ),
            ),

            // Spacer(),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavouriteScreen()),
                  );
                },
                child: Image(image: AssetImage("assets/images/IconBar4.png")),
              ),
            ),

            // Spacer(),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoreScreen()),
                  );
                },
                child: Image(image: AssetImage("assets/images/iconBar5.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
