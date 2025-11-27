import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> linKs = [
      "assets/images/Frame 2885.png",
      "assets/images/feac.png",
      "assets/images/insta.png",
      "assets/images/yout.png",
    ];
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              height: 100,

              child: ListView.builder(
                itemCount: linKs.length,
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: portraitWidth(context) * .015,
                    ),
                    child: Image(
                      height: portraitHeight(context) * 0.216,
                      width: portraitWidth(context) * 0.15,

                      image: AssetImage(linKs[index]),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
