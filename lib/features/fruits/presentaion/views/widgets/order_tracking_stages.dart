import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class OrderTrackingStep extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool isActive;
  final bool isLast;

  const OrderTrackingStep({
    required this.title,
    this.subtitle,
    required this.isActive,
    required this.isLast,
    super.key,
  });

  double measureTextHeight(
    BuildContext context,
    String text,
    TextStyle style,
    double maxWidth,
  ) {
    final tp = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: null,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: maxWidth);

    return tp.size.height;
  }

  @override
  Widget build(BuildContext context) {
    final subtitleStyle = TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 18, context: context),
      color: const Color(0xff656565),
    );

    double extraLine = 0;

    if (subtitle != null) {
      final h = measureTextHeight(
        context,
        subtitle!,
        subtitleStyle,
        MediaQuery.sizeOf(context).width * .55,
      );

      extraLine = h - 20;
      if (extraLine < 0) extraLine = 0;
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * .06976,
              height: MediaQuery.sizeOf(context).height * .03045,
              decoration: BoxDecoration(
                color: isActive ? const Color(0xff00BB1A) : Colors.white,
                border: Border.all(color: const Color(0xff00BB1A), width: 2),
                shape: BoxShape.circle,
              ),
            ),

            if (!isLast)
              Container(
                width: 2,
                height: 40 + extraLine,
                color: const Color(0xff00BB1A),
              ),
          ],
        ),

        SizedBox(width: MediaQuery.sizeOf(context).width * .05045),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: getResponsiveFontSize(
                    fontSize: 21,
                    context: context,
                  ),
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff292727),
                ),
              ),

              if (subtitle != null) Text(subtitle!, style: subtitleStyle),
            ],
          ),
        ),
      ],
    );
  }
}
