import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';

@override
class CustomLowerBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomLowerBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      left: false,
      right: false,
      child: Container(
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
          padding: EdgeInsets.only(
            left: MediaQuery.sizeOf(context).width * 0.04,
            right: MediaQuery.sizeOf(context).width * 0.04,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => onTap(0),
                  child: Image(
                    image: AssetImage(
                      currentIndex != 0
                          ? "assets/images/homeicon.png"
                          : "assets/images/selectedhome.png",
                    ),
                  ),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: () => onTap(1),
                  child: Image(
                    image: AssetImage(
                      currentIndex != 1
                          ? "assets/images/iconBar2.png"
                          : "assets/images/selectedOrder.png",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => onTap(2),
                  child: Image(
                    image: AssetImage(
                      currentIndex != 2
                          ? "assets/images/IconBar3.png"
                          : "assets/images/basketSelect.png",
                    ),
                  ),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: () => onTap(3),
                  child: Image(
                    image: AssetImage(
                      currentIndex != 3
                          ? "assets/images/IconBar4.png"
                          : "assets/images/sellectedFav.png",
                    ),
                  ),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: () => onTap(4),
                  child: Image(
                    image: AssetImage(
                      currentIndex != 4
                          ? "assets/images/iconBar5.png"
                          : "assets/images/sellectedMore.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
