import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({
    super.key,
    required this.lisnksLIst,
    @required this.namesList,
  });

  final List<String> lisnksLIst;
  final List<String>? namesList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * .0367),

      child: SizedBox(
        //width: MediaQuery.sizeOf(context).width * .9,
        height: MediaQuery.sizeOf(context).height * .1683,
        child: ListView.builder(
          itemCount: lisnksLIst.length,
          scrollDirection: Axis.horizontal,

          itemBuilder: (context, index) {
            return Column(
              children: [
                Image(
                  image: AssetImage(lisnksLIst[index]),
                  width: MediaQuery.sizeOf(context).width * .23604,

                  height: MediaQuery.sizeOf(context).height * .13583,
                ),
                Text(
                  namesList != null ? namesList![index] : "",
                  style: TextStyle(
                    color: Color(0xff292727),
                    fontSize: getResponsiveFontSize(
                      fontSize: 14,
                      context: context,
                    ),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
