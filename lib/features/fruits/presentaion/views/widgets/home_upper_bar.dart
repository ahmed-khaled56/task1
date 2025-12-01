import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/search_screen.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/filter_Sheet.dart';

class HomeUpperBar extends StatelessWidget {
  const HomeUpperBar({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: portraitWidth(context) * .03,
            right: portraitWidth(context) * .03,
            top: portraitHeight(context) * .05,
          ),
          child: Row(
            children: [
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchScreen()),
                  );
                },
                child: GestureDetector(
                  onTap: onTap,

                  child: const Image(
                    image: AssetImage("assets/images/search.png"),
                  ),
                ),
              ),
              SizedBox(width: portraitWidth(context) * .04),
              GestureDetector(
                onTap: () {
                  filterSheet(context);
                },

                child: const Image(
                  image: AssetImage("assets/images/settings.png"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: portraitHeight(context) * .0146),
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
