import 'package:flutter/material.dart';
import 'package:task_1/features/Profile/presentation/views/more_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/Home_view.dart';
import 'package:task_1/features/fruits/presentaion/views/basket_view.dart';
import 'package:task_1/features/fruits/presentaion/views/order_screen.dart';

class BasketLowerBar extends StatefulWidget {
  const BasketLowerBar({super.key});

  @override
  State<BasketLowerBar> createState() => _BasketLowerBarState();
}

class _BasketLowerBarState extends State<BasketLowerBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.067596,
      decoration: BoxDecoration(
        color: Color(0xff204F38),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),

      child: Padding(
        padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.04),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },

                child: Image(image: AssetImage("assets/images/homeicon.png")),
              ),
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
              child: Image(image: AssetImage("assets/images/basketSelect.png")),
            ),

            // Spacer(),
            Expanded(
              child: Image(image: AssetImage("assets/images/IconBar4.png")),
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
