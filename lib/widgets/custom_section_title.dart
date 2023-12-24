import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../themes/text_styles.dart';

class CustomSectionTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function()? onTap;

  const CustomSectionTitle(
      {super.key, required this.title, required this.subTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.textTexStyle(
                color: MyColor.secondaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              subTitle,
              style: TextStyles.textTexStyle(
                color: MyColor.purpleColor,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
