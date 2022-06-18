import 'package:flutter/material.dart';

import '../../constants/styles_library.dart';

class TimelineView extends StatelessWidget {

  final List<String> moods;

  const TimelineView({Key? key, this.moods = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: moods.map((mood) => Row(
        children: [
          Text(
            "9 AM - 12 PM",
            style: TextStyles.secondarycontent.boldifyText(),
          ),
          const Spacer(),
          SizedBox(
            width: 68,
            height: 38,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 15,
                  width: 15,
                  color: Colours.secondarytxt,
                ).withPadding(Paddings.rightPadding2),
                Text(
                  mood,
                  style: TextStyles.secondarycontent.boldifyText(),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ).withPadding(Paddings.acrossPadding10)
    ).toList(),
    );
  }
}