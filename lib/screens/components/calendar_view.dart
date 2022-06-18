import 'package:flutter/material.dart';

import '../../constants/styles_library.dart';

class CalendarView extends StatelessWidget {

  final String dateValue;

  const CalendarView({Key? key, required this.dateValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 24,
          decoration: const BoxDecoration(
            color: Colours.tertbcgk,
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Text(
            dateValue,
            style: TextStyles.secondarycontent.boldifyText(),
          ).withPadding(Paddings.allPadding3),
        ).withPadding(Paddings.acrossPadding10).withPadding(Paddings.bottomPadding10),
        Row(
          children: {"Mo": 10, "Tu": 11, "We": 12, "Th": 13, "Fr": 14, "Sa": 15, "Su": 16}.entries.map((entry) => CalendarViewDateWidget(
            isSelected: entry.key == "Tu",
            dateValue: entry.value.toString(),
            dayValue: entry.key,
          )).toList(),
        ).withPadding(Paddings.acrossPadding10),
      ],
    );
  }
}


class CalendarViewDateWidget extends StatelessWidget {

  final bool isSelected;
  final String dateValue;
  final String dayValue;

  const CalendarViewDateWidget({Key? key, required this.isSelected, required this.dateValue, required this.dayValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ?Colours.secondarybcgk : Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          children: [
            Text(
              dayValue,
              style: TextStyles.primarycontent.boldifyText(withLevel: -3).changeTextColourTo(colour: Colours.secondarytxt),
            ).withPadding(Paddings.erectPadding3),
            Text(
              dateValue,
              style: TextStyles.primarycontent.boldifyText(withLevel: -3).changeTextColourTo(colour: isSelected ? Colours.terttxt : Colours.fourthtxt),
            ).withPadding(Paddings.bottomPadding6).withPadding(Paddings.bottomPadding6),
          ],
        ).withPadding(Paddings.acrossPadding6),
      ),
    );
  }
}