import 'package:flutter/material.dart';
import 'package:task_1/features/Profile/presentation/views/more_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/Home_view.dart';
import 'package:task_1/features/fruits/presentaion/views/basket_view.dart';
import 'package:task_1/features/fruits/presentaion/views/favourite_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/order_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/basket_lower_bar.dart';

class MoreLowerBar extends StatefulWidget {
  const MoreLowerBar({super.key});

  @override
  State<MoreLowerBar> createState() => _MoreLowerBarState();
}

class _MoreLowerBarState extends State<MoreLowerBar> {
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
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.02,
        ),
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
                child: Image(
                  image: AssetImage("assets/images/sellectedMore.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
