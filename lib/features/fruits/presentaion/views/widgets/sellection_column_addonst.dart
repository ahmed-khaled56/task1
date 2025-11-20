import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/product_selection.dart';

class SellectionColumnAddonst extends StatelessWidget {
  const SellectionColumnAddonst({
    super.key,
    this.onTap,
    required this.ColumnLable,
    required this.isSelectedList,

    required this.isDowned,
    required this.lablesList,
    required this.circeled1TapedList,
  });
  final void Function()? onTap;
  final List<void Function()> circeled1TapedList;

  final bool isDowned;
  final List<bool> isSelectedList;
  final List<String> lablesList;
  final String ColumnLable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.sizeOf(context).height * .0265,
        //right: MediaQuery.sizeOf(context).width * .188,
        left: MediaQuery.sizeOf(context).width * .0488,
        right: MediaQuery.sizeOf(context).width * .0488,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                ColumnLable,

                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    fontSize: 18,
                    context: context,
                  ),

                  fontWeight: FontWeight.bold,
                  color: Color(0xff292727),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: onTap,
                child: isDowned != true
                    ? Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,

                        color: Color(0xff656565),
                      )
                    : Icon(
                        Icons.keyboard_arrow_up,
                        size: 30,

                        color: Color(0xff656565),
                      ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.sizeOf(context).height * .0096,
            ),
            child: Center(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.001,
                width: MediaQuery.sizeOf(context).width,
                color: Color(0xffD9D9D9),
              ),
            ),
          ),

          isDowned == true
              ? Column(
                  children: [
                    for (int i = 0; i < lablesList.length; i++)
                      ProductSelection(
                        lable: lablesList[i],
                        isSelected: isSelectedList[i],
                        onTap: circeled1TapedList[i],
                      ),
                  ],
                )
              : SizedBox(height: MediaQuery.sizeOf(context).height * .001),
        ],
      ),
    );
  }
}
