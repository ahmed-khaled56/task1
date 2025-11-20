import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/Home_view.dart';
import 'package:task_1/features/fruits/presentaion/views/basket_view.dart';

class LowerBar extends StatefulWidget {
  const LowerBar({super.key});

  @override
  State<LowerBar> createState() => _LowerBarState();
}

class _LowerBarState extends State<LowerBar> {
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

                child: Image(
                  image: AssetImage("assets/images/selectedhome.png"),
                ),
              ),
            ),
            //  Spacer(),
            Expanded(
              child: Image(image: AssetImage("assets/images/iconBar2.png")),
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
              child: Image(image: AssetImage("assets/images/IconBar4.png")),
            ),

            // Spacer(),
            Expanded(
              child: Image(image: AssetImage("assets/images/iconBar5.png")),
            ),
          ],
        ),
      ),
    );
  }
}
