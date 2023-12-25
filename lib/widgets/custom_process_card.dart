import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes/colors.dart';
import '../themes/text_styles.dart';
import 'custom_circle_card.dart';

class CustomProcessCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function()? onPressed;

  const CustomProcessCard(
      {super.key,
      required this.imagePath,
      required this.title,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCircleCard(
          image: imagePath,
          onPressed: () {},
        ),
        const Gap(15),
        Text(
          title,
          style: TextStyles.textTexStyle(
            color: MyColor.purpleColor,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
