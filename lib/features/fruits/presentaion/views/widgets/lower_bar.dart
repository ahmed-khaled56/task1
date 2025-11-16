import 'package:flutter/material.dart';

class LowerBar extends StatelessWidget {
  const LowerBar({
    super.key,
    @required this.selectedIcon1,
    @required this.selectedIcon2,
    @required this.selectedIcon3,
    @required this.selectedIcon4,
    @required this.selectedIcon5,
  });
  final String? selectedIcon1;
  final String? selectedIcon2;
  final String? selectedIcon3;
  final String? selectedIcon4;
  final String? selectedIcon5;

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
        padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width * .03488,
          right: MediaQuery.sizeOf(context).width * .0116,
        ),
        child: Row(
          children: [
            selectedIcon1 == null
                ? Image(image: AssetImage("assets/images/homeicon.png"))
                : Image(image: AssetImage(selectedIcon1!)),
            Spacer(),
            selectedIcon2 == null
                ? Image(image: AssetImage("assets/images/iconBar2.png"))
                : Image(image: AssetImage(selectedIcon2!)),
            Spacer(),
            selectedIcon3 == null
                ? Image(image: AssetImage("assets/images/IconBar3.png"))
                : Image(image: AssetImage(selectedIcon3!)),
            Spacer(),
            selectedIcon4 == null
                ? Image(image: AssetImage("assets/images/IconBar4.png"))
                : Image(image: AssetImage(selectedIcon4!)),
            Spacer(),
            selectedIcon5 == null
                ? Image(image: AssetImage("assets/images/iconBar5.png"))
                : Image(image: AssetImage(selectedIcon5!)),
          ],
        ),
      ),
    );
  }
}
