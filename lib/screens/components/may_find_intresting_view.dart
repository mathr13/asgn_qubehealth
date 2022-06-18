import 'package:asgn_qubehealth/constants/styles_library.dart';
import 'package:flutter/material.dart';

class MayFindIntrestingView extends StatelessWidget {

  final String content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit euismod risus elementum magna scelerisque nunc sed varius. Tellus quis tristique adipiscing sed metus, sit ac adipiscing. Leo aenean sed eu purus maecenas posuere ";
  final int videosCount = 2;

  const MayFindIntrestingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            DisplayLabels.mayFindIntresting,
            style: TextStyles.secondaryheader,
          )
          .withPadding(Paddings.bottomPadding5)
          .withPadding(Paddings.topPadding10)
          .withPadding(Paddings.acrossPadding10),
          Text(
            content,
            style: TextStyles.primarycontent.changeTextColourTo(colour: Colours.primarytxt.withOpacity(0.4)),
          )
          .withPadding(Paddings.bottomPadding5)
          .withPadding(Paddings.acrossPadding10),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: videosCount,
              itemBuilder: (context, index) => Container(
                width: 208,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colours.secondarybcgk,
                ),
              ).withPadding(Paddings.acrossPadding4),
            )
            .withPadding(Paddings.acrossPadding4)
            .withPadding(Paddings.bottomPadding4)
          ),
        ],
      ),
    );
  }
}