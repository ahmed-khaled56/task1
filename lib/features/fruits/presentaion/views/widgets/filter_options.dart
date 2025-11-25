import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CircleCheckItem extends StatefulWidget {
  final String label;
  final String? flag;

  const CircleCheckItem({super.key, required this.label, @required this.flag});

  @override
  State<CircleCheckItem> createState() => _CircleCheckItemState();
}

class _CircleCheckItemState extends State<CircleCheckItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
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
          widget.flag == null
              ? SizedBox(width: 10)
              : Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * .035,
                    right: MediaQuery.sizeOf(context).width * .02,
                  ),
                  child: Image(image: AssetImage(widget.flag!)),
                ),
          Text(
            widget.label,
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
