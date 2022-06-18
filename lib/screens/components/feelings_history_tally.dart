import 'package:flutter/material.dart';

import '../../constants/styles_library.dart';

class FeelingsHistoryTally extends StatelessWidget {

  final Map<String, int>? moodsValueTallyList;
  final int recentNumberOfDays = 30;

  const FeelingsHistoryTally({Key? key, this.moodsValueTallyList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DisplayLabels.feelingsHistoryByDays.replaceForKeyWith(key: "daysCount", value: recentNumberOfDays),
            style: TextStyles.tertheader,
          )
          .withPadding(Paddings.bottomPadding5)
          .withPadding(Paddings.acrossPadding10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: moodsValueTallyList?.length ?? 0,
              itemBuilder: (context, index) => MoodValueIndicator(
                moodTitle: moodsValueTallyList!.keys.toList()[index],
                moodProportionValue: moodsValueTallyList!.values.toList()[index],
                moodIcon: const Icon(Icons.add)
              ).withPadding(Paddings.acrossPadding4),
            ).withPadding(Paddings.acrossPadding7),
          ),
        ],
      ),
    );
  }
}


class MoodValueIndicator extends StatelessWidget {

  final String moodTitle;
  final int moodProportionValue;
  final Icon moodIcon;

  const MoodValueIndicator({Key? key, required this.moodTitle, required this.moodProportionValue, required this.moodIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colours.moodoptionbcgk,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colours.primaryshadow.withOpacity(0.1),
                      offset: const Offset(0, 4),
                      blurRadius: 6,
                      spreadRadius: 0
                    ),
                  ]
                ),
                width: 40,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 40,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colours.moodoptionfore,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colours.primaryshadow.withOpacity(0.1),
                        offset: const Offset(0, 4),
                        blurRadius: 6,
                        spreadRadius: 0
                      ),
                    ]
                  ),
                  width: 40,
                ),
              ),
            ],
          ),
          Text(
            moodTitle,
            style: TextStyles.secondarycontent,
          ).withPadding(Paddings.topPadding1)
        ],
      ),
    );
  }
}