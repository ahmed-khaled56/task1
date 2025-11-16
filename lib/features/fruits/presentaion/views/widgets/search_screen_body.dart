import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/TextRow.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/custom_search_textfield.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/lower_bar.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/search_card.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/search_upper_bar.dart';

class SearchScreenBody extends StatefulWidget {
  const SearchScreenBody({super.key});

  @override
  State<SearchScreenBody> createState() => _SearchScreenBodyState();
}

class _SearchScreenBodyState extends State<SearchScreenBody> {
  List<Widget> searchLisrtcards = [
    SearchCard(
      sellerName: "Seller Name",
      icon: "assets/images/icon.png",
      openClosd: "open",
      rate: 4.5,
      timeDelev: "40 to 60 Min",
    ),
    SearchCard(
      sellerName: "Seller Name",
      icon: "assets/images/icon2.png",
      openClosd: "open",
      rate: 4.5,
      timeDelev: "40 to 60 Min",
    ),
    SearchCard(
      sellerName: "Seller Name",

      openClosd: "close",
      rate: 4.5,
      timeDelev: "40 to 60 Min",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchUpperBar(),
        SizedBox(height: MediaQuery.sizeOf(context).height * .010),

        CustomSearchTextfield(),
        SizedBox(height: MediaQuery.sizeOf(context).height * .1493),
        TextRow(text1: "Top Seller", text2: "Show All", toppadding: 0),
        SizedBox(height: MediaQuery.sizeOf(context).height * .147),

        TextRow(
          text1: "All Sellers in selected Area",
          text2: "Show All",
          toppadding: 0,
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * .008),
        Expanded(
          child: ListView.builder(
            itemCount: searchLisrtcards.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return searchLisrtcards[index];
            },
          ),
        ),

        // FlexibExle(
        //   child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
        // ),
        LowerBar(),
      ],
    );
  }
}
