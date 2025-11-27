import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class ProductAppbar extends StatefulWidget {
  const ProductAppbar({super.key});

  @override
  State<ProductAppbar> createState() => _ProductAppbarState();
}

class _ProductAppbarState extends State<ProductAppbar> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: portraitWidth(context) * .03,
            right: portraitWidth(context) * .03,
            top: portraitHeight(context) * .015,
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              Spacer(),
              Text(
                'Fruit Market',
                style: TextStyle(
                  color: const Color(0xff204F38),
                  fontSize: getResponsiveFontSize(
                    fontSize: 24,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPressed = !isPressed;
                    });
                  },

                  child: isPressed != true
                      ? const Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.black,
                        )
                      : Icon(Icons.favorite_sharp, size: 30, color: Colors.red),
                ),
              ),
              SizedBox(width: portraitWidth(context) * .04),
              GestureDetector(
                onTap: () {},
                child: GestureDetector(
                  onTap: () {},

                  child: Image(
                    image: AssetImage("assets/images/Icon feather-share.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: portraitHeight(context) * .0066),
          child: Container(
            height: portraitHeight(context) * 0.001,
            width: MediaQuery.sizeOf(context).width,
            color: Color(0xffDEDFDF),
          ),
        ),
      ],
    );
  }
}
