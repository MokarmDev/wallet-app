import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../themes/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onTap;

  const CustomButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 193,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AdaptiveTheme.of(context).mode.isLight
                ? MyColor.primaryColor
                : Colors.white12),
        child: Center(
          child: Text(
            text,
            style: TextStyles.textTexStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
