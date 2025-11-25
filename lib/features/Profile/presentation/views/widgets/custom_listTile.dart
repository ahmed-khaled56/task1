import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class cutomListTile extends StatelessWidget {
  final String title;
  final String? iconLink;
  final Color? color;
  final IconData? icon;
  final void Function()? onTap;
  const cutomListTile({
    super.key,
    required this.title,
    @required this.iconLink,
    @required this.color,
    @required this.icon,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .02,
        ),
        child: ListTile(
          leading: iconLink != null
              ? Image.asset(
                  color: color == null ? Color(0xff204F38) : color,
                  iconLink!,
                  width: 20,
                  height: 23,
                )
              : Icon(icon, color: Color(0xff204F38)),
          trailing: Icon(Icons.arrow_forward_ios_outlined, size: 20),
          title: Text(
            title,

            style: TextStyle(
              color: Colors.black,

              fontSize: getResponsiveFontSize(fontSize: 14, context: context),

              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
