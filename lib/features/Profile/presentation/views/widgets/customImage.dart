import 'package:flutter/material.dart';

class customProfileImage extends StatelessWidget {
  const customProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * .2,
          height: MediaQuery.sizeOf(context).height * .09656,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xff204F38), width: 2),
          ),
        ),

        Positioned(
          bottom: -3,
          right: -5,
          child: Image(image: AssetImage("assets/images/camera.png")),
        ),
      ],
    );
  }
}
