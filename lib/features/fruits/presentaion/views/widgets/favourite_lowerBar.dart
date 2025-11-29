import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/basket_view.dart';
import 'package:task_1/features/more/presentation/views/more_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/Home_view.dart';
import 'package:task_1/features/fruits/presentaion/views/order_screen.dart';

class FavouriteLowerbar extends StatefulWidget {
  const FavouriteLowerbar({super.key});

  @override
  State<FavouriteLowerbar> createState() => _FavouriteLowerbarState();
}

class _FavouriteLowerbarState extends State<FavouriteLowerbar> {
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
        padding: EdgeInsets.symmetric(
          horizontal: portraitWidth(context) * 0.02,
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
              child: Image(image: AssetImage("assets/images/sellectedFav.png")),
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
