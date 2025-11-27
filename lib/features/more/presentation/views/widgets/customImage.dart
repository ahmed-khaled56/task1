import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';

class customProfileImage extends StatelessWidget {
  const customProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: portraitWidth(context) * .2,
          height: portraitHeight(context) * .09656,
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
