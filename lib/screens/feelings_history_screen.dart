import 'package:asgn_qubehealth/constants/styles_library.dart';
import 'package:flutter/material.dart';

import 'components/calendar_view.dart';
import 'components/feelings_history_tally.dart';
import 'components/generic_divider.dart';
import 'components/may_find_intresting_view.dart';
import 'components/timeline_view.dart';

class FeelingHistoryScreen extends StatelessWidget {
  const FeelingHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colours.primarybcgk,
          title: const Text(
            'Your Feelings History',
            style: TextStyles.primaryheader,
          ),
        ),
        backgroundColor: Colours.primarybcgk,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 30 days feeling
              const FeelingsHistoryTally(
                moodsValueTallyList: {"Energetic": 30, "Sad": 10, "Happpy": 40, "Angry": 1, "Calm": 0, "Bored": 0, "Love": 0}
              ).withPadding(Paddings.topPadding10),
              const GenericDivider(),
              // calendar view
              const CalendarView(
                dateValue: "10 Jun, 2021",
              ),
              const GenericDivider(),
              // timeline
              const TimelineView(
                moods: ["Love", "Angry", "Angry"],
              ),
              const GenericDivider(),
              // interesting
              const MayFindIntrestingView(),
              const SizedBox(
                height: 50,
              )
            ],
          )
        ),
      ),
    );
  }
}