import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:wallet_app/themes/text_styles.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final String imagePath;
  final String text;
  final Color textColor;

  const CustomContainer({
    super.key,
    this.width = 130,
    this.height = 50,
    this.borderRadius = 15,
    required this.color,
    required this.imagePath,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: AdaptiveTheme.of(context).mode.isLight
                  ? Colors.grey.withOpacity(0.1)
                  : Colors.transparent, //color of shadow
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 2),
            )
          ],
          color: color),
      child: Center(
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 24,
              width: 24,
            ),
            const Gap(10),
            Expanded(
              child: Text(
                text,
                style: TextStyles.textTexStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
