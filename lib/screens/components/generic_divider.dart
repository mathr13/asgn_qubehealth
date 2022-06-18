import 'package:asgn_qubehealth/constants/styles_library.dart';
import 'package:flutter/material.dart';

class GenericDivider extends StatelessWidget {
  const GenericDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 0.2,
      color: Colours.gendivider.withOpacity(0.3),
    ).withPadding(Paddings.erectPadding5);
  }
}