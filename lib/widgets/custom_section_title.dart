import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../themes/text_styles.dart';

class CustomSectionTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const CustomSectionTitle(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.textTexStyle(
              color: MyColor.secondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
        Text(
          subTitle,
          style: TextStyles.textTexStyle(
            color: MyColor.purpleColor,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
