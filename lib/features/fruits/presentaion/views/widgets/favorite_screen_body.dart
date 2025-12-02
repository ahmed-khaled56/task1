import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';
import 'package:task_1/features/fruits/presentaion/views/widgets/favorite_card.dart';

class FavoriteScreenBody extends StatelessWidget {
  const FavoriteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> FavList = [
      FavoriteCard(
        beforePrice: "14.00 KD",
        price: "12.00 KD",

        productName: "Product name",
        note: "Up to 10% Off",
      ),

      FavoriteCard(
        beforePrice: "14.00 KD",
        price: "12.00 KD",

        productName: "Product name",
      ),
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isPortrait =
              MediaQuery.of(context).orientation == Orientation.portrait;

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height * .01),

                  if (isPortrait)
                    ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: FavList.length,
                      itemBuilder: (context, index) {
                        return FavList[index];
                      },
                    )
                  else
                    GridView.builder(
                      padding: const EdgeInsets.all(6),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: FavList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: portraitHeight(context) * .01287,
                        crossAxisSpacing: portraitWidth(context) * .0279,
                        childAspectRatio: 2.9,
                      ),
                      itemBuilder: (context, index) {
                        return FavList[index];
                      },
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
