import 'package:flutter/material.dart';
import 'package:task_1/features/fruits/presentaion/views/seller_screen.dart';
import 'package:task_1/features/payment/presentation/views/widgets/TextRow.dart';

class SellerList extends StatefulWidget {
  const SellerList({super.key, required this.cardsList});
  final List<dynamic> cardsList;
  @override
  State<SellerList> createState() => _SellerListState();
}

class _SellerListState extends State<SellerList> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        TextRow(text1: "Seller", text2: "Show All", toppadding: 0),

        ...List.generate(widget.cardsList.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SellerScreen(customSellerCard: widget.cardsList[index]),
                ),
              );
            },
            child: widget.cardsList[index],
          );
        }),
      ]),
    );
  }
}
