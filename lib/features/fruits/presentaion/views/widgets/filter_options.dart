import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CircleCheckItem extends StatelessWidget {
  final String label;
  final String? flag;
  final bool isChecked;
  final Function(bool) onChanged;

  const CircleCheckItem({
    super.key,
    required this.label,
    @required this.flag,
    required this.isChecked,
    required this.onChanged,
  });

  // bool isChecked1 = false;

  //   bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!isChecked),
      child: Row(
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isChecked ? Colors.green : Colors.grey,
                width: 2,
              ),
            ),
            child: isChecked
                ? Icon(Icons.check, size: 16, color: Color(0xff204F38))
                : null,
          ),
          flag == null
              ? SizedBox(width: 10)
              : Padding(
                  padding: EdgeInsets.only(
                    left: portraitWidth(context) * .035,
                    right: portraitWidth(context) * .02,
                  ),
                  child: Image(image: AssetImage(flag!)),
                ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: getResponsiveFontSize(fontSize: 16, context: context),
              color: Color(0xff656565),
            ),
          ),
        ],
      ),
    );
  }
}
