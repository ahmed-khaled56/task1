import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key, required this.lisnksLIst, this.namesList});

  final List<String> lisnksLIst;
  final List<String>? namesList;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: EdgeInsets.only(left: screenWidth * .0367),
      child: SizedBox(
        height: 125, //
        child: ListView.builder(
          itemCount: lisnksLIst.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.03),
              child: SizedBox(
                width: screenWidth * 0.22,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: screenWidth * 0.20,
                      height: screenWidth * 0.20,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(lisnksLIst[index], fit: BoxFit.cover),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      namesList?[index] ?? "",
                      style: TextStyle(
                        color: const Color(0xff292727),
                        fontSize: getResponsiveFontSize(
                          fontSize: 14,
                          context: context,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
