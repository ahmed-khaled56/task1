import 'package:flutter/material.dart';

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
                      left: MediaQuery.sizeOf(context).width * .015,
                    ),
                    child: Image(
                      height: MediaQuery.sizeOf(context).height * 0.216,
                      width: MediaQuery.sizeOf(context).width * 0.15,

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
