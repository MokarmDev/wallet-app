import 'package:adaptive_theme/adaptive_theme.dart';
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
          onPressed: onPressed,
          color: AdaptiveTheme.of(context).mode.isLight
              ? Colors.white
              : Colors.white12,
          colorImage: AdaptiveTheme.of(context).mode.isLight
              ? MyColor.primaryColor
              : Colors.white,
        ),
        const Gap(15),
        Text(
          title,
          style: TextStyles.textTexStyle(
            color: AdaptiveTheme.of(context).mode.isLight
                ? MyColor.primaryColor
                : Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
