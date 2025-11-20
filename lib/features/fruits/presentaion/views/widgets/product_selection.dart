import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class ProductSelection extends StatelessWidget {
  const ProductSelection({
    super.key,
    required this.isSelected,
    this.onTap,
    required this.lable,
  });
  final bool isSelected;
  final void Function()? onTap;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.sizeOf(context).height * .0086,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Colors.green : Colors.grey,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Icon(Icons.check, size: 16, color: Color(0xff204F38))
                  : null,
            ),
          ),
          SizedBox(width: 10),
          Text(
            lable,
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
