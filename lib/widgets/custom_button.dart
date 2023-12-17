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
        padding: const EdgeInsets.all(8),
        width: 193,
        height: 63,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: MyColor.primaryColor),
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
