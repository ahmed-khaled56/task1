import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_seller_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/seller_screen_body.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key, required this.customSellerCard});
  final CustomSellerCard? customSellerCard;

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(portraitHeight(context) * .05),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: portraitWidth(context) * .03,
                right: portraitWidth(context) * .03,
                top: portraitHeight(context) * .05,
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
                    onTap: () {
                      setState(() {
                        isPressed = true;
                      });
                    },
                    child: const Image(
                      image: AssetImage("assets/images/search.png"),
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
        ),
      ),
      body: SafeArea(
        child: SellerScreenBody(customSellerCard: widget.customSellerCard),
      ),
    );
  }
}
